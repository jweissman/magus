require 'rails_helper'

RSpec.describe Stream, type: :model do
  it 'has a name' do
    stream = Stream.new(name: 'the-stream')
    expect(stream.name).to eq 'the-stream'
  end
end
