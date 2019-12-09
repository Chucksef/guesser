require 'sinatra'
require 'sinatra/reloader'

answer = rand(100) + 1


get '/' do
    "The SECRET NUMBER is #{answer}"
end

