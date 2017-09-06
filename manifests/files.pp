class ciemat_tweaks::files {

    # Folders /root/* must be created before getting files
    require ciemat_tweaks::folders

    file { '/etc/sysctl.conf':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/sysctl.conf',
    }
    
    exec { 'reloading sysctl':
        command => '/sbin/sysctl --system',
        refreshonly => true,
        subscribe => File['/etc/sysctl.conf'],
    }

    file { '/etc/updatedb.conf':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/updatedb.conf',
    }

    file { '/etc/profile.d/zzz_ciemat.sh':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/zzz_ciemat.sh',
    }

    file { '/etc/profile.d/zzz_ciemat.csh':
        ensure => present,
        mode => '0644',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/zzz_ciemat.csh',
    }

    file { '/root/scripts/update_voms.sh':
        ensure => present,
        mode => '0700',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/update_voms.sh',
    }

    file { '/root/scripts/reconfig_wn.sh':
        ensure => present,
        mode => '0700',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/reconfig_wn.sh',
    }

    file { '/root/scripts/change_disk_params':
        ensure => present,
        mode => '0755',
        owner => 'root',
        group => 'root',
        source => 'puppet:///grid_files/ciemat_tweaks/change_disk_params',
    }

    file { '/root/scripts/install_torque_after_puppet.sh':
            ensure => present,
            mode => '0755',
            owner => 'root',
            group => 'root',
            source => 'puppet:///grid_files/ciemat_tweaks/install_torque_after_puppet.sh',
    }

}
