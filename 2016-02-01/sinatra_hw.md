## Exercises for Feb 1, 2016

Build a Sinatra app that has two endpoints.

The first endpoint should be a GET call at path "/lyrics". Every time the user visits the site, he or she should see different lyrics from the song [12 Days of School](http://www.dennydavis.net/poemfiles/xmas2.htm). The lyric for the song should match the number of times they've visited. For example, their first visit should show:

  "On the 1st day of high school, my teacher gave to me: A 'C' in American History"
  
The second endpoint should be a POST call at path "/clear". This should essentially reset the counter. 

Note you'll have to use sessions to store the counter. 

No, you don't have to type up all the lyrics. Install the "activesupport", "shotgun", and "sinatra" gems and start with the code below:

```ruby
require 'sinatra'
require 'active_support/all'
include ActiveSupport::Inflector
include ActiveSupport::Core::Extensions

@twelve_days = [
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
  extracted_lyrics = @twelve_days[0...day].reverse
  result = "On the #{ordinalize(day)} of high school, my teacher gave to me: "
  result += extracted_lyrics.to_sentence
end
```

## Bonus: 

Add an endpoint called "/lyrics_for_day?day=" where you have a GET parameter for the day. If the user enters a specific day like "2",
you'd have "/lyrics_for_day?day=2". Rather than relying upon the counter, you give them they lyrics for the day they ask for.
