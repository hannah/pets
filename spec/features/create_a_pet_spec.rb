require 'spec_helper'

feature 'create a pet' do
  scenario 'create an owner' do
    visit new_pet_path
    fill_in "Name", with: "Sam"
    fill_in "Type", with: "Fish"
    fill_in "Age", with: "55"
    click_on "Create Pet"

    expect(page).to have_contents("Sucessfully created pet")
    expect(page).to have_contents("Sam")
    expect(page).to have_contents("Fish")
  end
end
