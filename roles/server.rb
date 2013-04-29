name 'server'
description 'This is a generic server.'
run_list %w{
    role[server_attributes]
    recipe[basics]
    recipe[nagios]
    recipe[munin]
}
