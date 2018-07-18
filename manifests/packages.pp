class ciemat_tweaks::packages {

    package {'tk':
        ensure => latest,
    }

    package {'redhat-lsb-core':
        ensure => present,
    }

    package {'python-pip':
        ensure => present,
    }

    package {'libX11-devel':
        ensure => present,
    }
}
