require 'rails_helper'
# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system
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
