require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

message = "Guess a number:"

get '/' do
    guess = params["guess"]
    message = check_guess(guess) if params["guess"]
    erb :index, :locals => {:answer => NUMBER, :message => message}
end

def check_guess(num)
    num = num.to_i
    if num > NUMBER
        "Too high!"
    elsif num < NUMBER
        "Too low!"
    else
        "That's right!"
    end
end