class apache::firewall{

  class {'::firewall': }
  
  firewall { '000 accept all icmp':
    proto  => 'icmp',
    action => 'accept',
  }

  
  firewall { '010 accept all http':
    proto  => 'tcp',
    action => 'accept',
    dport   => '80',

}

}
