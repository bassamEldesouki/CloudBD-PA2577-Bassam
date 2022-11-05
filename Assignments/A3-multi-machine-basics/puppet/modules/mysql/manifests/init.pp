class mysql (
  $sql_package = 'mysql-server',
  $sql_service = 'mysql'
) {
  package { $sql_package:
    ensure => present,
  }
  service { $sql_service:
    require => Package[$sql_package],
    enable  => true,
    ensure => running,
  }
}
