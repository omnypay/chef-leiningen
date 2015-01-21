## DESCRIPTION:

Installs leiningen from the built image on github: https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein

Forked from the outdated repo https://github.com/runa-labs/chef-leiningen (see https://github.com/runa-labs/chef-leiningen/pull/3)

## REQUIREMENTS:

Java

## ATTRIBUTES:

* :leiningen
  * `:bin_dir`         Where to install the lein executable
                       Default: `"/usr/local/bin"`
  * `:user`            The unix user to own the executable
                       Default: `"root"`
  * `:group`           The unix group to own the executable
                       Default: `"root"`
  * `:run_environment` Shell environment to run the intial lein command that will trigger the install
                       Default: `{"HOME" => node[:leiningen][:bin_dir], "HTTP_CLIENT" => 'curl --insecure -f -L -o'}`

## USAGE:

### Install Leiningen

The default recipe will install leiningen on the target system in `node[:leiningen][:bind_dir]. 


###  LWRP for creating uberjars

For creating Uberjars on target environments

```
   leiningen_project "Deploy Something" do
      action            [:build]
      s3_wagon_private  true
      s3_username       aws['access_key']
      s3_passphrase     aws['secret_key']
      uberjar_name      jar_name
      source_dir        source_dir
      deploy_user       user
    end
```
