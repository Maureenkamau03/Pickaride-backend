require_relative 'config/environment'
require_relative "app/controllers/application_controller.rb"
use Rack::JSONBodyParser

run ApplicationController