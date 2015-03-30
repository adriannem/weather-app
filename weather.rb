require 'yahoo_weatherman'


client = Weatherman::Client.new

puts "What is your zip code?"

zip_code = gets.chomp

weather = client.lookup_by_location(zip_code.to_s)

today = Time.now.strftime('%w').to_i


weather.forecasts.each do |forecasts|

  day = forecasts['date']

  weekday = day.strftime('%w').to_i

  if weekday == today
     dayName = 'Today'
  elsif weekday == today + 1
     dayName = 'Tomorrow'
  else
     dayName = day.strftime('%A')
  end

    puts dayName +  " is going to be "  + forecasts["text"].to_s + " with a low of " + forecasts["low"].to_s + " and a high of " + forecasts["high"].to_s + " degrees Celsius."
end
