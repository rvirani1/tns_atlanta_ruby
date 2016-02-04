require "sinatra"

enable :sessions

get("/") do
  erb :index # this always be the last line
end

post("/submission") do
  students = ["Bob", "Christie", "Albert", "John", "Rebecca"]
  teachers = ["Riaz", "James"]
  if students.include?(params["name"])
    @type = "student"
  elsif teachers.include?(params["name"])
    @type = "teacher"
  else
    @type = "unknown"
  end
  erb :submission
end

