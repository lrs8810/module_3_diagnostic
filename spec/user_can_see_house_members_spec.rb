require 'rails_helper'

RSpec.describe "As a user when I visit the welcome page I select 'Gryffindor' and search for members" do
  it 'I see the total number of members for that house' do
    visit '/'

    select 'Gryffindor', :from => :house

    click_button 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('21 Members')

    within '.members' do
      expect(page).to have_content('Sirius Black')
    end
  end
end
