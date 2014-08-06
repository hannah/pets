require 'spec_helper'

feature 'creating an owner' do
  scenario 'create a new owner' do
    visit new_owner_url
    fill_in "First name", with: "Will"
    fill_in "Last name", with: "Smith"
    fill_in "Email", with: "piratesarrgr8@gmail.com"

    click_on "Submit"
    expect(page).to have_content("Sucessfully created owner")
    expect(page).to have_content('Will')
  end
end
