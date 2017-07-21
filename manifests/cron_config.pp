class ciemat_tweaks::cron_config {

    # Generate multiple cron jobs in the same file
    cron::job::multiple { 'sysstat':
        jobs => [
          {
            minute      => '*/2',
            hour        => '*',
            date        => '*',
            month       => '*',
            weekday     => '*',
            user        => 'root',
            command     => '/usr/lib64/sa/sa1 1 1',
            description => 'Run system activity accounting tool every 10 minutes',
          },
          {
            minute      => '53',
            hour        => '23',
            date        => '*',
            month       => '*',
            weekday     => '*',
            user        => 'root',
            command     => '/usr/lib64/sa/sa2 -A',
            description => 'Generate a daily summary of process accounting at 23:53',
          },
        ],
        mode => '0600',
        environment => [ 'MAILTO=root', 'PATH="/sbin:/bin:/usr/sbin:/usr/bin"' ],
    }

}
