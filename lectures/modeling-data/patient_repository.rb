require 'csv'
require 'pry-byebug'

class PatientRepository
  def initialize(csv_file_path, room_repository)
    @room_repository = room_repository
    @csv_file_path = csv_file_path
    @patients = []
    load_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # binding.pry
      #<CSV::Row id:"1" name:"harry" age:"17" cured:"false" room_id:"1">
      row[:id] = row[:id].to_i
      row[:age] = row[:age].to_i
      # each patient has a ROOM INSTANCE assigned to
      # in here I have the room id
      # we need to find/retrieve the right room instance
      # IT IS ROOM REPOSITORY RESPONSABILITY TO FIND THE RIGHT ROOM
      room = @room_repository.find(row[:room_id].to_i)
      row[:room] = room
      row[:cured] = row[:cured] == 'true'
      patient = Patient.new(row)
      # p patient
      # STEP MISSING THIN K ABOUT IT
    end
  end
end
