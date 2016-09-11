require 'rails_helper'

RSpec.feature "HomePages", type: :feature do

  describe 'about page' do
    it 'shows names of all authors of the web app' do
      visit '/about'

      expect(page).to have_content 'Piotrek Ania Kuba Jędrek Beata'
    end
  end

end
