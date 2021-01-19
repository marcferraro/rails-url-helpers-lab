require 'rails_helper'

describe Student do
  before(:each) do
    @student = Student.create!(first_name: "Daenerys", last_name: "Targaryen")
    # binding.pry
  end

  it 'can be created' do
    expect(@student).to be_valid
  end

  it 'has an active attribute that defaults to false' do
    # binding.pry
    expect(@student.active).to eq(false)
  end

  it 'has a to_s instance method' do
    expect(@student.to_s).to eq("Daenerys Targaryen")
  end
end
