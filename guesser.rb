require 'sinatra'
require 'sinatra/reloader'

answer = rand(100) + 1


get '/' do
    erb :index, :locals => {:answer => answer}
end

