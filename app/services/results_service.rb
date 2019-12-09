class ResultsService
  def initialize(house)
    @house = house
  end

  def connection
    Faraday.new("https://www.potterapi.com/v1/") do |faraday|
      faraday.params['key'] = ENV['API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json
    raw_data = connection.get('characters') do |chars|
      chars.params['house'] = @house
      chars.params['orderOfThePhoenix'] = true
    end

    JSON.parse(raw_data.body)
  end
end
