#node default {

#	class {'hello_web':}
#}

# or we can do this instead if no parameters
node default {
	include hello_web
}


# update the file 
# node default {
#  class { 'hello_web':
#    package_name => 'httpd',
#    service_name => 'httpd',
#     doc_root => '/var/www/html',
#   }
# }



# # multi nodes 
# node dk-ord-web* {
#   class { 'hello_web':
#     package_name => 'httpd',
#     service_name => 'httpd',
#     doc_root => '/var/www/html',
#   }
# }
# node dk-las-web* {
#   class { 'hello_web':
#     package_name => 'apache2',
#     service_name => 'apache2',
#     doc_root => '/var/www/html',
#   }
# }
