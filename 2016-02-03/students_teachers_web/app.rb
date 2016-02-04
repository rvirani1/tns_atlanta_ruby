require "sinatra"

enable :sessions

get("/") do
  erb :index # this always be the last line
end

post("/submission") do
  params["name"] # value is "Bob"
  #  Pull logic from your last game
  # @type which needs to be equal to "student", "teacher", or "unknown"
  erb :submission
end

