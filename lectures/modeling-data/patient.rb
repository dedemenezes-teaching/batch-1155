class Patient
  attr_reader :name, :age
  attr_accessor :room
  # STATE
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age  = attributes[:age]
    @cured = attributes[:cured] || false
    @room = attributes[:room] #=> an instance of the Room class
  end

  # BEHAVIORS // METHODS
  def cured!
    @cured = true
  end

  def cured?
    @cured
  end
end
