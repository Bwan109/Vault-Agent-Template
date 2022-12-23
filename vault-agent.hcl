pid_file = "C:/Users/user/Desktop/Learnings/vaultuemiis/agent.pid"

vault {
  address = "https://vault-cluster-public-vault-e663b5e3.ab476f75.z1.hashicorp.cloud:8200"
}

auto_auth {
  method "approle" {
    namespace = "admin"
    config = {
      role_id_file_path   = "C:/Users/user/Desktop/Learnings/vaultuemiis/agent-role-id"
      secret_id_file_path = "C:/Users/user/Desktop/Learnings/vaultuemiis/agent-secret-id"
      remove_secret_id_file_after_reading = false
    }
  }

  sink "file" {
    config = {
      path = "C:/Users/user/Desktop/Learnings/vaultuemiis/agent-token"
    }
  }

}

cache {
  use_auto_auth_token = true
}

listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = true
}

template {
   source      = "C:/Users/user/Desktop/Learnings/vaultuemiis/keys.tmpl"
   destination = "C:/Users/user/Desktop/Learnings/vaultuemiis/keys.txt"
}


template {
   source      = "C:/Users/user/Desktop/Learnings/vaultuemiis/keys.tmpl"
   destination = "C:/Users/user/Desktop/Learnings/vaultuemiis/keys2.txt"
}


template {
   source      = "C:/Users/user/Desktop/Learnings/vaultuemiis/keys.tmpl"
   destination = "C:/Users/user/Desktop/Learnings/vaultuemiis/keys3.txt"
}









