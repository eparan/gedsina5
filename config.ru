require 'rubygems'
require 'bundler'
require 'rack'
require 'sinatra'
require 'thin'
require './main'

Bundler.require

run Sinatra::Application
