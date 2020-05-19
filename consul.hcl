container "consul_1" {
  image {
    name = "consul:1.7.1"
  }
  
  command = ["consul", "agent", "-config-file=/config/consul.hcl"]

  volume {
    source      = "./consul_config"
    destination = "/config"
  }

  volume {
    source      = "./files"
    destination = "/scripts"
  }

  network { 
    name = "network.onprem"
  }
}

container "consul_2" {
  image {
    name = "consul:1.7.1"
  }
  
  command = ["consul", "agent", "-config-file=/config/consul.hcl"]

  volume {
    source      = "./consul_config"
    destination = "/config"
  }

  volume {
    source      = "./files"
    destination = "/scripts"
  }

  network { 
    name = "network.onprem"
  }
}

container "consul_3" {
  image {
    name = "consul:1.7.1"
  }
  
  command = ["consul", "agent", "-config-file=/config/consul.hcl"]

  volume {
    source      = "./consul_config"
    destination = "/config"
  }

  volume {
    source      = "./files"
    destination = "/scripts"
  }

  network { 
    name = "network.onprem"
  }
}
