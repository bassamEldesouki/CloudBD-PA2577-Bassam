#node default {

#	class {'hello_web':}
#}

# or we can do this instead if no parameters
# node default {
#	include hello_web
#}


# update the file 
node default {
  class { 'hello_web':
    package_name => 'httpd',
    service_name => 'httpd',
    doc_root => '/var/www/html',
  }
}
