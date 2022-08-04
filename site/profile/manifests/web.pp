class profile::web{
    include nginx
    host { 'app':
     ensure       => 'present',
    host_aliases => ['apphost'],
    ip           => '172.18.0.2',
     target       => '/etc/hosts',
        }
    }

}
