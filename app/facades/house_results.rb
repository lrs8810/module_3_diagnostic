class HouseResults
  def initialize(house)
    @service = ResultsService.new(house)
  end

  def members
    member_data = @service.get_json

    member_data.map do |member|
      Member.new(member)
    end
  end

  def count
    members.count
  end
end
