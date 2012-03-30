require 'rubygems'
require 'bundler'
require 'rack'
require 'sequel'
require 'sinatra'
require 'thin'
require './main'

Bundler.require

run Sinatra::Application
