# Puppet class to manage SSH configuration
#
# This class ensures that the SSH configuration file for the 'ubuntu' user is present
# and specifies settings for connecting to a remote host.
#
# Example usage:
# class { 'ssh_config':
#   ensure => present,
#   ...
# }
class ssh_config {
  file { '/home/ubuntu/.ssh/config':
    ensure  => present,
    owner   => 'ubuntu',
    group   => 'ubuntu',
    content => @("EOF"),
      Host 3.84.239.242
          IdentityFile /home/ubuntu/.ssh/school
          PasswordAuthentication no
    EOF
  }
}