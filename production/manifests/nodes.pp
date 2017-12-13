node 'agent1' {
  hiera_include ('classes')
}


node 'agent2' {
  class {'linux': }
  class {'motd': }
  class {'apache': }
  class { '::mcollective':
  client            => true,
  middleware_hosts => [ 'puppet.example.com' ],
  }
}

node 'agent3' {
  class {'motd': }
}
