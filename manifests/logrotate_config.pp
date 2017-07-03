class ciemat_tweaks::logrotate_config {

    logrotate::rule {'syslog':
        path => ['/var/log/cron', '/var/log/maillog', '/var/log/messages', '/var/log/secure', '/var/log/spooler'],
        rotate => 8,
        sharedscripts => true,
        postrotate => "/bin/kill -HUP `cat /var/run/syslogd.pid 2> /dev/null` 2> /dev/null || true",
    }

}
