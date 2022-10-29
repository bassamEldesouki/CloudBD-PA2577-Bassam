class test (
  $nodejs_package = 'nodejs'
) {
  package { $nodejs_package:
    ensure => present,
  }
}
