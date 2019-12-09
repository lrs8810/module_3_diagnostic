# Then I should see a total of the number of members for that house. (21 for Gryffindor)
# Then I should see a list of 21 members
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)

require 'rails_helper'

RSpec.describe "As a user when I visit the welcome page I select 'Gryffindor' and search for members" do
  it 'I see the total number of members for that house' do
    visit '/'

    select 'Gryffindor', :from => :house

    click_button 'Search For Members'

    expect(page).to have_content('21 Members')
  end
end
