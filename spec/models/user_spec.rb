require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { User.new(first_name: "John", last_name: "Doe") }

  before(:all) do
    puts "before_all is running"
  end

  before(:each) do
    puts "before_each is running"
  end

  after(:all) do
    puts "after all is running"
  end

  after(:each) do
    puts "after each is running"
  end
  
  it 'is valid with valid attributes' do

    expect(subject).to be_valid
    puts "first test"
  end

  it 'is not valid without the first name' do
  
    user = User.new(last_name: "Doe")
    expect(user).not_to be_valid
    puts "second test"

  end

  it 'is not valid without the last name' do
    
    user = User.new(first_name: "John")
    expect(user).not_to be_valid
    puts "third test"
  end

end
