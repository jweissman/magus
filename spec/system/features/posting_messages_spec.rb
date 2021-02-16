require 'rails_helper'
describe 'posting messages', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  context 'as a user' do
    let(:tom) { User.create(name: "tom") }
    let(:home) { Space.create(user: tom, name: "Home") }
    let(:id_frame) { Frame.create(name: "_id", about: "tom", user: tom, space: home) }
    let(:status) { Stream.create(name: "_status", about: "all about tom", user: tom, frame: id_frame) }

    describe 'when I visit /' do
      it 'view messages' do
        hello = Message.create(content: 'hi', stream: status, user: tom)
        hello_again = Message.create(content: 'hi again', stream: status, user: tom)
        visit '/'
        expect(page).to have_content '_status'
        expect(page).to have_content '2 post(s)'
      end

      xit 'create messages' do
        visit '/'
        expect(page).to have_content 'No posts yet'
        fill_in "How are you?", with: 'Great thx'
        click_button 'Post'
        expect(page).to have_content '1 post:'
        expect(page).to have_content '- You just now: Great thx'
      end
    end
  end
end
