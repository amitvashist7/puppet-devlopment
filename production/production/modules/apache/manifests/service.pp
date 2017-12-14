class apache::service {

  $httpserv = $osfamily ? {
    'redhat' => 'httpd',
    'debian' => 'apache2',
    default  => 'httpd',
  }


  $httppkg = $osfamily ? {
    'redhat' => 'httpd',
    'debian' => 'apache2',
    default  => 'httpd',
  }


  service { $httpserv:
   ensure => 'running',
   enable => 'true',
   require => Package[$httppkg],

 }

}
