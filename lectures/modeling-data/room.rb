class Room
  attr_accessor :id
  # STATE
  # capacity #=> Integer
  # patients #=> Array of instances of patient
  # door_number #=> Integer
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  # BEHAVIOR
  def full?
    @capacity == @patients.size
  end

  def add_patient(patient)
    # p self
    raise StandardError, 'Room is full!' if self.full?

    @patients << patient
    # we need to tell the patient
    # which room the patient is in
    patient.room = self
    # self is pointing to the instance of room that called the method ADD PATIENT
  end
end
