require 'spec_helper'

feature 'Basic Naviation' do
  scenario 'home page' do
    it 'should visit' do
      visit '/'
      expect(page).to have_content 'New Relic Ruby Kata'
    end
  end
end
