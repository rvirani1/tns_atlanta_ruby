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

get '/' do
  session["counter"] ||= 0
  session["counter"] >= 12 ? session["counter"] = 1 : session["counter"] += 1
  lyrics(session["counter"])
end

post "/clear" do
  session["counter"] = 0
  redirect back
end
