# some of code the is taken from https://github.com/patrickdlee/vagrant-examples

# create a pre stage
stage { 'pre':
  before => Stage['main']
}

# add the nodeconfig module to the pre stage so that all nodes run it
class { 'nodeconfig':
  stage => 'pre'
}


# all nodes get nodeconfig class
include nodeconfig

node 'appserver' {
  include nodejs
}

node 'dbserver' {
  include mysql
}

node 'web' {
  include nginx
}

# for all test nodes
node default {
  
}
