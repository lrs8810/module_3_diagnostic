class Member
  attr_reader :name, :role, :house, :patronus, :id

  def initialize(member_hash)
    @id = member_hash['id']
    @name = member_hash['name']
    @role = member_hash['role']
    @house = member_hash['house']
    @patronus = member_hash['patronus']
  end
end
