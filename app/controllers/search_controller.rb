class SearchController < ApplicationController
  def index
    def connection
      Faraday.new("https://www.potterapi.com/v1/") do |faraday|
        faraday.params['key'] = ENV['API_KEY']
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json(house)
      raw_data = connection.get('characters') do |chars|
        chars.params['house'] = house
        chars.params['orderOfThePhoenix'] = true
      end
      json_data = JSON.parse(raw_data.body)
      json_data.count
    end

    @house_results = get_json('Gryffindor')
  end
end
