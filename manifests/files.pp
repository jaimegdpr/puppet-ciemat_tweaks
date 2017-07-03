class ciemat_tweaks::files {

    file { '/etc/sysctl.conf':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/sysctl.conf',
    }

    file { '/etc/updatedb.conf':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/updatedb.conf',
    }

    file { '/etc/profile.d/zzz_ciemat.sh':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/zzz_ciemat.sh',
    }

    file { '/etc/profile.d/zzz_ciemat.csh':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/zzz_ciemat.csh',
    }

    file { '/root/scripts/update_voms.sh':
        ensure => present,
        mode => '0700',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/update_voms.sh',
    }

    file { '/root/scripts/reconfig_wn.sh':
        ensure => present,
        mode => '0700',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/reconfig_wn.sh',
    }

    file { '/root/scripts/change_disk_params':
        ensure => present,
        mode => '0755',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/change_disk_params',
    }
}
