class ciemat_tweaks {
    include ciemat_tweaks::files
    include ciemat_tweaks::folders
    include ciemat_tweaks::logrotate_config
    include ciemat_tweaks::cron_config
    include ciemat_tweaks::packages
}
