# == Class: mysql
#
# Installs MySQL server, sets config file, and loads database for dynamic site.
#
class mysql {
  package { ['mysql-server']:
    ensure => present;
  }
  package { ['mysql-server-5.7']:
    ensure => present;
  }

  service { 'mysql':
    ensure  => running,
    require => Package['mysql-server'];
    #require => Package['mysql-server-5.7'];
  }

  # file { '/etc/mysql/my.cnf':
  #   source  => 'puppet:///modules/mysql/my.cnf',
  #   require => Package['mysql-server'],
  #   #require => Package['mysql-server-5.7'],
  #   notify  => Service['mysql'];
  # }

  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -proot status',
    command => "mysqladmin -uroot password root",
    path    => ['/bin', '/usr/bin'],
    require => Service['mysql'];
  }

  # exec { 'load-dynamic-sql':
  #   command => 'mysql -u root -proot < /vagrant/sites/dynamic.sql',
  #   path    => ['/bin', '/usr/bin'],
  #   require => Exec['set-mysql-password'];
  # }
}
