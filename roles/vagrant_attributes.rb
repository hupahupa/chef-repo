name 'vagrant_attributes'
description 'Attributes for Vagrant machines.'
default_attributes({
    :apache => {
        :user => 'vagrant',
    },
    :php => {
      :fpm => {
          :user => 'vagrant',
      },
    },
    :nginx => {
      :sendfile => 'off',
    },
    :mysql => {
        :server_root_password => 'vagrant',
    },
})
