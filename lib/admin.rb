require 'sinatra/base'
class Admin < Sinatra::Base
  get '/' do
    "Admin Dashboard"
  end
end