#Client configuration file (w/ Puppet) 

class ssh_config {
  file { '~/.ssh/config':
    ensure  => present,
    owner   => 'ubuntu',
    group   => 'ubuntu',
    content => @("EOF"),
      Host ubuntu@3.84.239.242
          IdentityFile ~/.ssh/school
          PasswordAuthentication no
    EOF
  }
}