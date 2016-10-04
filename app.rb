require "pry"
require "sinatra"
require "sinatra/namespace"
require "sinatra/reloader"
require "pg"
require "pony"
require "httparty"

require_relative "routes.rb"

class MightyShady < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::Namespace
end
