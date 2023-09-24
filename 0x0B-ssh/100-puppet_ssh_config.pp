#Client configuration file (w/ Puppet) 

class ssh_config {
  file { '~/.ssh/config':
    ensure  => present,
    owner   => 'ubuntu',
    group   => 'ubuntu',
    content => @("EOF"),
      Host your_server_address_here
          IdentityFile ~/.ssh/school
          PasswordAuthentication no
    EOF
  }
}