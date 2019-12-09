class SearchController < ApplicationController
  def index
    render locals: {
      house_results: HouseResults.new(params[:house])
    }
  end
end
