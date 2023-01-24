require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/ssaunier"

html_response = URI.open(url).read
user = JSON.parse(html_response)
p user["login"]
p user["bio"]
