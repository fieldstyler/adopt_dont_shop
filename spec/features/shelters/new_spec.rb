require 'rails_helper'

RSpec.describe "new shelter page", type: :feature do
  it "can create a new shelter with all shelter info" do
    visit "/shelters"

    click_link 'Create Shelter'

    expect(current_path).to eq('/shelters/new')

    fill_in 'Name', with: 'Dog Shelter'
    click_on 'Create Shelter'

    expect(current_path).to eq("/shelters")
    expect(page).to have_content('Dog Shelter')

  end
end
