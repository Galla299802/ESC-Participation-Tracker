require 'rails_helper'

RSpec.describe 'ESC Participation Tracker', type: :system do

  describe 'home page' do
    it 'shows the right content' do
      visit 'localhost:3000/'
      expect(page).to have_content('About the App')
    end
  end
end