require 'sinatra'
require 'active_support/all'
include ActiveSupport::Inflector

enable :sessions

TWELVE_DAYS = [
  'A "C" in American History',
  'Two bathroom passes',
  'Three hot lunches',
  'Four pink slips',
  'Five golden "D"s',
  'Six weeks of failing',
  'Seven pages of reading',
  'Eight words of warning',
  'Nine points off citizenship',
  'Ten spelling tests',
  'Eleven definitions',
  'Twelve new problems'
]

def lyrics(day)
  extracted_lyrics = TWELVE_DAYS[0...day].reverse
  result = "On the #{ordinalize(day)} of high school, my teacher gave to me: "
  result + extracted_lyrics.to_sentence
end

# 1. GET endpoint that shows lyrics for first day
# 2. Update the endpoint to show different lyrics per visit
# 3. Update the endpoint to start back at one when we hit 12
# 4. Build a clear endpoint to reset the counter

get("/") do
  # show lyrics for the first day
  # session["day"] ||= 0
  if session["day"] == nil
    session["day"] = 0
  end

  if session["day"] >= 12
    session["day"] = 0
  end

  session["day"] += 1
  erb :index
end

post("/clear") do
  session["day"] = 0
  redirect back
end
