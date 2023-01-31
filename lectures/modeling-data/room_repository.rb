require 'csv'

class RoomRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = []
    load_csv
  end

  def create(room)
    # its Repo responsability to GIVE THE ID
    # 1. set the room ID
    @next_id = @rooms.empty? ? 1 : @rooms.last.id + 1
    room.id = @next_id
    # 2. add the new room to the rooms array
    @rooms << room
    # 3. save it into the CSV
    # save_csv
  end

  def find(id)
    @rooms.find do |room|
      room.id == id
    end
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      # <CSV::Row id:"1" capacity:"2">
      row[:capacity] = row[:capacity].to_i
      row[:id] = row[:id].to_i
      room = Room.new({id: row[:id], capacity: row[:capacity]})
      @rooms << room
    end
  end
end
