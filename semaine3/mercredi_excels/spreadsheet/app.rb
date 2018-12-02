require 'nokogiri'
require 'open-uri'
# pry a suppr
require 'google_drive'
require 'pry'
require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib", __FILE__)
require 'scrapper'

# certaines gem ne sont pas a mettre dans le gemfiles, comme 'open-uri' (OpenUri is a part of the Ruby Standard Lib, thats why you only need to require it in your code)
GetEmails.new.perform