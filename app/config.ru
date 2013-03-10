require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'
require 'sinatra/websocketio'
require File.expand_path 'main', File.dirname(__FILE__)

set :websocketio, :port => 8080

EM.epoll
EM.set_descriptor_table_size 20000

run TestApp
