require("sinatra")
require_relative("insulter")

enable :sessions

# Store our insults in an array

# GET request at "/" that shows insults, old + new insult
get("/") do
  # session["previous_insults"] ||= []
  # session["previous_insults"].push(random_insult)
  if session["previous_insults"] == nil
    session["previous_insults"] = [random_insult]
  else
    session["previous_insults"].push(random_insult)
  end
  session["previous_insults"]
  erb :index
end

# POST request at "/clear" that clears the insults, then redirects to the home page
post("/clear") do
 # localhost:4567/clear
  session["previous_insults"] = []
  redirect back
end
