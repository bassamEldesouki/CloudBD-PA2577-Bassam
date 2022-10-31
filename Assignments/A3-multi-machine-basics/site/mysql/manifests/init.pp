
class mysql (
  $sql_package = 'mysql-server',
  $sql_service = 'mysql',
  $update_command = '/usr/bin/apt-get update',
) {
  exec { 'update' :
    command => $update_command,
  }

  package { $sql_package:
    ensure => present,
  }
  service { $sql_service:
    require => Package[$sql_package],
    enable  => true,
    ensure => running,
  }
}

