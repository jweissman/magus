require 'rails_helper'

RSpec.describe Space, type: :model do
  it 'has a name' do
    space = Space.create(name: 'Home')
    expect(space.name).to eq('Home')
  end
end
