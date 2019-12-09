class HouseResults
  def initialize(house)
    @service = ResultsService.new(house)
  end

  def members
    @service.get_json
  end

  def count
    members.count
  end
end
