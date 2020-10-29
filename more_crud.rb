require 'http'

response = HTTP.get("http://localhost:3000/api/first_five")

response = response.parse
p response