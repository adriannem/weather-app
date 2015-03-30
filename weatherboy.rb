require "weatherboy"

puts "What is your zip code?"

location = gets.chomp

weatherboy = Weatherboy.new

weatherboy.location = location

w = weatherboy.current

puts w.weather

puts w.temp_f

f = weatherboy.forecasts


puts f[0].title
puts f[0].conditions
puts f[0].text


