#
# Cookbook Name:: leiningen
# Recipe:: default
#
# Copyright 2015, Robert J. Berger

default[:leiningen][:url] = "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein"
default[:leiningen][:bin_dir] = "/usr/local/bin"
default[:leiningen][:user] = "root"
default[:leiningen][:group] = "root"
default[:leiningen][:run_environment] = {"HOME" => node[:leiningen][:bin_dir], "HTTP_CLIENT" => 'curl --insecure -f -L -o'}
