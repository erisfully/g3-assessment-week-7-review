require 'spec_helper'

feature 'Homepage' do
  scenario 'Shows the welcome message' do
    visit '/'

    expect(page).to have_content 'Welcome!'

  end
  scenario "vistor can add messages" do
  visit "/"
    expect(page).to have_field("name")
    expect(page).to have_field("message")

    fill_in "name", with: "You"
    fill_in "message", with: "Hello"
    click_button "Add Message"

    expect(page).to have_content("Hello", "You")
  end
end