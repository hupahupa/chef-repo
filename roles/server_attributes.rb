name 'server_attributes'
description 'Attributes for servers.'
monitoring_hosts = %w{
    127.0.0.1
    173.230.144.198
}
default_attributes({
    :admin_users => %w{
        jake
        phunehehe
    },
    :aliases => { 'root' => 'noc@cogini.com' },
    :localbackup => { :cron_time => 17 },
    :tarsnap => { :cron_time => 19 },
    :munin => { :allow => monitoring_hosts },
    :nagios => { :allowed_hosts => monitoring_hosts },
    :shorewall => {
        :allowed_hosts => monitoring_hosts,
        :allowed_ports => [80, 443, 1022],
        :blocked_ports => [22],
    },
    :ssh => { :ports => [22, 1022] },
    :basics => {
        :package_mask => %w{
            apt-listchanges
            apticron
            consolekit
            unattended-upgrades
        }
    }
})
