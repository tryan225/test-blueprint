---
id: index
title: Your Interview POC
sidebar_label: Introduction
---
### Introduction

Welcome to the HashiCorp Interactive Technical Interview POC

# Using the Terminals

Your interview environment is equipped with interactive terminals, each terminal has a session open with the same linux-flavored container. Consul and Vault should be installed here. First, let's check both of those things.

```shell
### Check if Consul is installed

$ consul version 

### Check if we have Vault installed

$ vault version
```

<Terminal target="tools.container.shipyard.run" shell="/bin/bash" workdir="/files" user="root" expanded/>
<p></p>

Great! Let's move on to the exercise. We encourage you to challenge yourself and use this as a hands-on exploration of Vault. We don’t expect you to come up with all the right answers. We are more interested in learning how you approach the problems and what you discover. 

### Documentation and Resources

Some tools that you may find helpful include:
- Vault Dev Server (https://www.vaultproject.io/docs/concepts/dev-server)
- Vault server logs: https://learn.hashicorp.com/vault/operations/troubleshooting-vault#vault-server-logs 
- Vault documentation
  - Docs: https://www.vaultproject.io/docs
  - API: https://www.vaultproject.io/api-docs
  - Learn Guides: https://learn.hashicorp.com/vault
  - Vault OSS Repo: https://github.com/hashicorp/vault/
  - Vault OSS Mailing List: https://groups.google.com/forum/#!forum/vault-tool
  - AWS free tier (https://aws.amazon.com/free)
  - PostgreSQL Docker Image: https://hub.docker.com/_/postgres/
  - LDAP Docker Image: https://github.com/osixia/docker-openldap  

### Initial exercise

Here we will provide two terminals. Please remember that each of these terminals has a session open with *the same server*. This should allow you to run, debug, and interact with Vault and Consul at the same time.

# AWS Secrets Engine

#### Part 1
Please set up a basic AWS secrets engine following our documentation (https://www.vaultproject.io/docs/secrets/aws). Then, translate this CLI command (AWS Secrets Engine) into a Vault API command:

```shell
$ vault write aws/roles/my-role \
    credential_type=iam_user \
    policy_document=-<<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:*",
      "Resource": "*"
    }
  ]
}
EOF
```

#### Part 2
Translate the above CLI command (AWS Secrets Engine) into a Vault API command.

#### Part 3
Write a Vault ACL policy that would give you the permissions to run the above command. 

### Terminals

#### Terminal 1
<Terminal target="tools.container.shipyard.run" shell="/bin/bash" workdir="/files" user="root" expanded/>
<p></p>

#### Terminal 2
<Terminal target="tools.container.shipyard.run" shell="/bin/bash" workdir="/files" user="root" expanded/>
<p></p>

<!--
```shell
consul members
```

### Consul server 1

<Terminal target="consul-1.container.shipyard.run" shell="/bin/sh" workdir="/" user="root" expanded/>
<p></p>

```shell
consul leave
```
<!
### Consul server 2

<Terminal target="consul-2.container.shipyard.run" shell="/bin/sh" workdir="/" user="root" expanded/>
<p></p>

```shell
consul operator raft list-peers
```

### Consul server 3

<Terminal target="consul-3.container.shipyard.run" shell="/bin/sh" workdir="/" user="root" expanded/>
<p></p>

### Api node

<Terminal target="api-1.container.shipyard.run" shell="/bin/sh" workdir="/" user="root" expanded/>
<p></p>

### Backend node

<Terminal target="backend.container.shipyard.run" shell="/bin/sh" workdir="/" user="root" expanded/>
<p></p>

### Configuring Consul

The configuration for the Consul server is at the path `/consul_config/consul.hcl`, this file mirrored from the local machine to `/config` in the container where it is loaded.
To bootstrap the server adding central config, modify the `config_entries` stanza in this file.

```json
config_entries {
  # We are using gateways and L7 config set the 
  # default protocol to HTTP
  bootstrap 
    {
      kind = "proxy-defaults"
      name = "global"

      config {
        protocol = "http"
      }

      mesh_gateway = {
        mode = "local"
      }
    }
}
```
-->
