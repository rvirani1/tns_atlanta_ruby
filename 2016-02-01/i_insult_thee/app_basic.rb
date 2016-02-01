require_relative("insulter")
require 'sinatra'

enable :sessions

get "/" do
  session["previous_insults"] ||= []
  new_insult = random_insult
  session["previous_insults"].unshift(new_insult)
  session["previous_insults"].join("<br>")
end

get "/clear" do
  session["previous_insults"] = []
  redirect back
end
