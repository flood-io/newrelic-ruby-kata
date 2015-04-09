require 'spec_helper'

feature 'Naviation', flood: true do
  scenario 'they visit the loop page' do
    visit '/loop'
    expect(page).to have_content 'The Loop'
  end

  scenario 'they visit the big list page' do
    visit '/big_list'
    expect(page).to have_content 'The Big List'
  end

  scenario 'they visit the tweets page' do
    visit '/tweets'
    expect(page).to have_content 'The Tweets'
  end

  scenario 'they visit the cache page' do
    visit '/caching'
    expect(page).to have_content 'The Cache'
  end

  scenario 'they visit the async page' do
    visit '/async'
    expect(page).to have_content 'The Async'
  end

  scenario 'they visit the many assets page' do
    visit '/many_assets'
    expect(page).to have_content 'ManyAssets'
  end

  scenario 'they visit the errors page' do
    visit '/errors'
    expect(page).to have_content 'The Errors'
  end
end
