pid_file = "C:/vault-agent/agent.pid"

vault {
  address = "https://vault-cluster-public-vault-e663b5e3.ab476f75.z1.hashicorp.cloud:8200"
}

auto_auth {
  method "approle" {
    namespace = "admin"
    config = {
      role_id_file_path   = "C:/vault-agent/agent-role-id"
      secret_id_file_path = "C:/vault-agent/agent-secret-id"
      remove_secret_id_file_after_reading = false
    }
  }

  sink "file" {
    config = {
      path = "C:/vault-agent/agent-token"
    }
  }

}

cache {
  use_auto_auth_token = true
}

listener "tcp" {
  address     = "127.0.0.1:8100"
  tls_disable = true
}

template {
   source      = "C:/Users/Administrator/Desktop/github-actions-deployment-to-iis/keys.tmpl"
   destination = "C:/Users/Administrator/Desktop/github-actions-deployment-to-iis/keys.txt"
   error_on_missing_key = true

}



template {
   source      = "C:/Users/Administrator/Desktop/github-actions-deployment-to-iis/keys2.tmpl"
   destination = "C:/Users/Administrator/Desktop/github-actions-deployment-to-iis/keys.txt"
   error_on_missing_key = true

}











