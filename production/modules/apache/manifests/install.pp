class apache::install {

  $httppkg = $osfamily ? {
    'redhat' => 'httpd',
    'debian' => 'apache2',
    default  => 'httpd',
  }


 package { $httppkg:
   ensure => 'installed',

 }

}
