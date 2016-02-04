require("sinatra")
require_relative("insulter")

enable :sessions

# 1. Show a new insult every time
# 2. Store old insults
# 3. Allow user to clear

# GET request at "/" that shows insults, old + new insult
get("/") do
  # session["previous_insults"] ||= []
  # session["previous_insults"].push(random_insult)
  if session["previous_insults"] == nil
    session["previous_insults"] = [random_insult]
  else
    session["previous_insults"].push(random_insult)
  end
  erb :index
end

# POST request at "/clear" that clears the insults, then redirects to the home page
post("/clear") do
  session["previous_insults"] = []
  redirect back
end
