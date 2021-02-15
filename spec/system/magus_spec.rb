require 'rails_helper'

RSpec.describe "magus", type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  it 'renders' do
    visit '/'
    expect(page).to have_content 'Magus'
  end
end
