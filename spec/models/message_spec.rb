require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'has content' do
    message = Message.new(content: 'hello world')
    expect(message.content).to eq('hello world')
  end
end
