require_relative 'patient'
require_relative 'room'

# room_one = Room.new({ capacity: 2 })
# room_two = Room.new({ capacity: 10 })
# # p room_one
# patient_one = Patient.new({ age: 17, name: 'Harry' })

# room_one.add_patient(patient_one)

# patient_two = Patient.new({ age: 17, name: 'Hermione' })
# room_two.add_patient(patient_two)

# patient_three = Patient.new({ age: 17, name: 'Ronald' })
# room_one.add_patient(patient_three)

# p room_one

# # patient_one.cured!

# # puts "#{patient_one.age} years old #{patient_one.name} is #{patient_one.cured? ? 'cured' : 'sick'}"
require_relative 'room_repository'
require_relative 'patient_repository'

csv_file = 'rooms.csv'
room_repo = RoomRepository.new(csv_file)
p room_repo

patient_repo = PatientRepository.new('patients.csv', room_repo)

new_room = Room.new({capacity: 20})
room_repo.create(new_room)
p room_repo
