class profile::web{
    include nginx
    host { 'web':
     ensure       => 'present',
    host_aliases => ['webhost'],
    ip           => '172.18.0.2',
     target       => '/etc/hosts',
        }
    
}
