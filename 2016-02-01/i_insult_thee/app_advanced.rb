require_relative("insulter")
require 'sinatra'
require 'tilt/erb'

enable :sessions

get "/" do
  session["previous_insults"] ||= []
  @new_insult = random_insult
  session["previous_insults"].unshift(@new_insult)
  @insults = session["previous_insults"]
  #session["previous_insults"].join("<br>")
  erb :index
end

post "/clear" do
  session["previous_insults"] = []
  redirect back
end
