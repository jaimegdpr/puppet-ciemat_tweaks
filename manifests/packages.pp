class ciemat_tweaks::packages {

    package {'tk':
        ensure => latest,
    }

    package {'redhat-lsb-core':
        ensure => present,
    }
}
