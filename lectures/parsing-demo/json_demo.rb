require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# # PARSING

# json_serialized = File.read(filepath)
# # p json_serialized
# beatles = JSON.parse(json_serialized)
# # p beatles
# puts "Band name is: #{beatles["title"]}"

# beatles['beatles'].each do |beatle|
#   p beatle["first_name"]
# end

# STORING
beatles = {
  beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  }
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end
