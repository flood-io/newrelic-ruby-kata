require 'spec_helper'

feature 'Naviation' do
  scenario 'home page' do
    it 'should visit home' do
      visit '/'
      expect(page).to have_content 'New Relic Ruby Kata'
    end
  end

  scenario 'sub pages' do
    it 'should visit the loop' do
      visit '/loop'
      expect(page).to have_content 'The Loop'
    end

    it 'should visit the big list' do
      visit '/big_list'
      expect(page).to have_content 'The Big List'
    end

    it 'should visit the tweets' do
      visit '/tweets'
      expect(page).to have_content 'The Tweets'
    end

    it 'should visit the cache' do
      visit '/caching'
      expect(page).to have_content 'The Cache'
    end

    it 'should visit the async' do
      visit '/async'
      expect(page).to have_content 'The Async'
    end

    it 'should visit the many assets' do
      visit '/many_assets'
      expect(page).to have_content 'ManyAssets'
    end

    it 'should visit the errors' do
      visit '/errors'
      expect(page).to have_content 'The Errors'
    end
  end
end
