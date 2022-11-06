
class nodeconfig {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  host {
    'hostmachine':
      ip => '192.168.56.1';

    'appserver':
      ip => '192.168.56.2';

    'dbserver':
      ip => '192.168.56.3';
      
    'web':
      ip => '192.168.56.4';

    'tst0':
      ip => '192.168.56.5';

    'tst1':
      ip => '192.168.56.6';

    'tst2':
      ip => '192.168.56.7';
  }

  file {
    '/home/vagrant/.bashrc':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/nodeconfig/bashrc';
  }
}
