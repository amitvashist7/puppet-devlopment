class apache::deploy {

  $myhostname    = hiera('apache::myhostname')
  $myipaddress   = hiera('apache::myipaddress')
  $myoperatingsystem = hiera('apache::myoperatingsystem')
  $myenvironment = hiera('apache::myenvironment')
  $mypurpose     = hiera('apache::mypurpose')
  $myname        = hiera('apache::myname')

 file { '/var/www/html':
    ensure => 'directory',
    mode  => '0644',
    owner => '0',
    group => '0',
  }

  file { '/var/www/html/index.html':
    ensure => 'present',
    group => '0',
    mode => '0644',
    owner => '0',
    content => inline_template("Welcome to the world of Automation \n TimeStamp: <%= Time.now %>\n"),
  }

 
  file { '/var/www/html/info.html':
    ensure => 'present',
    group => '0',
    mode => '0644',
    owner => '0',
    content => template('apache/info.html.erb'),
  }

  
  file { '/var/www/html/node.html':
    ensure => 'present',
    group => '0',
    mode => '0644',
    owner => '0',
    content => template('apache/node.erb'),
  }

}
