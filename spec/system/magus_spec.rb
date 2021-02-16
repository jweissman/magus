require 'rails_helper'

RSpec.describe "Magus app", type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  describe 'home page' do
    it 'renders' do
      visit '/'
      expect(page).to have_content 'Magus | Home'
    end
  end
#  pending 'nav'
end
