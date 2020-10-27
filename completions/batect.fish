set __fish_batect_proxy_loaded_versions

function __fish_batect_proxy_complete_for_current_version
    set -l tokens (commandline -opc) (commandline -ct)
    set -l wrapper_script_path $tokens[1]
    set -e tokens[1]

    if test ! -x $wrapper_script_path
        # If the wrapper script doesn't exist, fallback to as if this completion script doesn't exist.
        complete -C"batect-completion-proxy-nonsense $tokens"
        return
    end

    set -l batect_version (cat $wrapper_script_path | string match --regex 'VERSION="(.*)"' | awk 'NR == 2')

    if test "$batect_version" != ""
        set -l batect_version_major (string split "." -- $batect_version)[1]
        set -l batect_version_minor (string split "." -- $batect_version)[2]

        if test \( $batect_version_major -eq 0 \) -a \( $batect_version_minor -lt 62 \)
            # If we know what the version is, and it's too old, fallback to as if this completion script doesn't exist.
            complete -C"batect-completion-proxy-nonsense $tokens"
            return
        end
    else
        # HACK: this makes it easier to test completions locally when testing with the start script generated by Gradle.
        set batect_version "0.0.0-local-dev"
    end

    set -lx BATECT_COMPLETION_PROXY_REGISTER_AS "batect-$batect_version"
    set -lx BATECT_COMPLETION_PROXY_VERSION "0.3.0-dev"

    if not contains $batect_version $__fish_batect_proxy_loaded_versions
        set completion_script (BATECT_QUIET_DOWNLOAD=true $wrapper_script_path --generate-completion-script=fish | string collect)
        eval $completion_script
        set -a __fish_batect_proxy_loaded_versions $batect_version
    end

    complete -C"$BATECT_COMPLETION_PROXY_REGISTER_AS $tokens"
end

complete -c batect -x -a "(__fish_batect_proxy_complete_for_current_version)"
