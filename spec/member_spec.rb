require 'rails_helper'

RSpec.describe 'Member' do
  before(:each) do
    @member = Member.new({
      "id" => "1234",
      "name" => "Harry",
      "role" => "student",
      "house" => "Gryffindor",
      "patronus" => 'horse'
      })
  end

  it 'exists' do
    expect(@member).to be_an_instance_of(Member)
  end

  it 'attributes' do
    expect(@member.name).to eq('Harry')
    expect(@member.role).to eq('student')
    expect(@member.house).to eq('Gryffindor')
    expect(@member.patronus).to eq('horse')
  end
end
