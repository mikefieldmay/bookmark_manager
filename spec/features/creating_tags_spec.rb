require 'spec_helper'

feature 'creating links'do
  scenario 'when user adds new link' do
    visit('/links/new')
    fill_in :name, with: 'Ebay'
    fill_in :url, with: 'www.ebay.co.uk'
    fill_in :tag, with: 'shopping'
    click_button('Add Link')

    link = Link.first
    expect(link.tags.map(&:tag)).to include('shopping')
  end
end
