class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNKIY2eGUXHwCO4KTFcjhcmRu096xgfTNVH4zaKiJzMOYB49QQAMzpXAK8vW8vhrHGsvFaOwpO33QeZw4QD+Cxh43Z1cmwxIwU/rDEjeZlKx7Dy7sgi76pYtu0NBcTez/rflEpKwtc9xVbn3jrO2XuiwZx/0Kk92ncOlAC6cemz+qjFl3bHLvPRIQfuIoZJyNY4TK0EE8bXpG0CRFFjZwNVF6R8dIJqim5pGifsmOCgilZ5F2mCSYCQRz0JdMiqQazWEDs8Bat+2FgHRfvmM7G+Xa0kGSFQaE4G5Bmv7QiFfy+Dwh4Wp/m3VaNsIrxovXpow39cOXUYjWZZZkiamjX',
	}  
}
