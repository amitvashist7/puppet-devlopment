class linux {

$ntpservice = $osfamily ? {
  'redhat' => 'ntpd',
  'debian' => 'ntp',
  default  => 'ntpd',
}

  file { '/info.txt':
    ensure  => 'present',
    content => inline_template("Created By Puppet to test Class @ <%= Time.now %>"),
  }

 package { 'ntp':
   ensure => 'installed',
 }

 $admintools = ['git', 'nano', 'screen']
 
 package { $admintools:
   ensure => 'installed',
 }

 service { $ntpservice:
   ensure => 'running',
   enable => 'true',

 }
}
