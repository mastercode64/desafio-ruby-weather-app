require 'httparty'
require 'json'

KEY=ENV["API_KEY"]
LOCATION=ENV["LOCATION"]

puts "Desafio Ruby - Weather API"
puts "API Key is #{KEY}"
puts "Previsao para: #{LOCATION}"

Encoding.default_external = "utf-8"
response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{URI.escape(LOCATION)}&units=metric&lang=pt_br&appid=#{KEY}")

desc = response['weather'].first['description']
temp = response['main']['temp']

puts "Descricao: #{desc}"
puts "Temperatura: #{temp}"