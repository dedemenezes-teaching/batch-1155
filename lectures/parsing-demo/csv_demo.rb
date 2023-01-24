require "csv"

# TODO - let's read/write data from beatles.csv
filepath = 'data/beatles.csv'

# PARSING
CSV.foreach(filepath, headers: :first_row) do |row|
  p "First name: #{row['First Name']}, Last name: #{row['Last Name']}, Instrument: #{row['Instrument']}"
end

# STORING
beatles = [
  ["John","Lennon","Guitar"],
  ["Paul","McCartney","Bass Guitar"],
  ["George","Harrison","Lead Guitar"],
  ["Ringo","Starr","Drums"]
]
CSV.open(filepath, 'wb') do |csv|
  csv << ['First Name', 'Last Name', 'Instrument']
  beatles.each do |beatle|
    csv << beatle
  end
end
