# This is for flexible configuration: the parameters are dynaically configured based on the operating system and 
# then later referenced from our main class
# this class just for declaring params to be used in the init.pp file
class hello_web::params {
  case $::osfamily {
    'Debian': {
      $package_name = "apache2"
      $service_name = "apache2"
      $doc_root     = "/var/www/html"
    }
    'RedHat': {
      $package_name = "httpd"
      $service_name = "httpd"
      $doc_root     = "/var/www/html"
    }
  }
}
