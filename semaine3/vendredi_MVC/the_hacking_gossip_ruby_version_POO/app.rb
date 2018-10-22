require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)

require 'router'
require 'csv'
# require 'view'
# require 'model'


Router.new.perform