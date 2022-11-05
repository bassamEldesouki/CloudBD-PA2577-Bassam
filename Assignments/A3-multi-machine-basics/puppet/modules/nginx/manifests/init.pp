class nginx (
  $nginx_package = 'nginx',
  $nginx_service = 'nginx'
) {
  package { $nginx_package:
    ensure => present,
  }
  service { $nginx_service:
    require => Package[$nginx_package],
    enable  => true,
    ensure => running,
  }
}

