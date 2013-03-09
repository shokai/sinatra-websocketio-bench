require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'
require 'sinatra/websocketio'
require File.expand_path 'main', File.dirname(__FILE__)

run TestApp
