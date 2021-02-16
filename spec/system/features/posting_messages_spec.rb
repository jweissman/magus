require 'rails_helper'
RSpec.describe 'posting messages', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  context 'as a user' do
    let(:tom) { User.create(name: "Tomås Travel") }
    let(:home) { Space.create(user: tom, name: "Home") }
    let(:identity) { home.frames.create(name: "_id", about: "tom", user: tom) }
    let(:status) { identity.streams.create(name: "_status", about: "all about tom", user: tom) }

    describe 'when I visit /' do
      it 'then I see status messages' do
        hello = Message.create(content: 'hi', stream: status, user: tom)
        hello_again = Message.create(content: 'hi again', stream: status, user: tom)
        visit '/'
        assert page.has_content? 'Magus', wait: 10
        expect(page).to have_content '_status'
        expect(page).to have_content '2 post(s)'
      end

      context 'given I enter a status update and press enter' do
        xit 'then I see a new status has been created' do
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
end
