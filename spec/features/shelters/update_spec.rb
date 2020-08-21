require 'rails_helper'
# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system
RSpec.describe "shelter show page", type: :feature do
  it "can see all shelter information" do
    shelter_1 = Shelter.create!(name: "Dog Shelter",
                               address: "123 dog way",
                               city: "Denver",
                               state: "CO",
                               zip: "80104")

    visit "/shelters/#{shelter_1.id}"

    click_link 'Update Shelter'

    expect(current_path).to eq("/shelters/#{shelter_1.id}/edit")

    fill_in 'Name', with: 'Dog Shelter2'
    click_on 'Update Shelter'

    binding.pry

    expect(current_path).to eq("/shelters/#{shelter_1.id}")
    expect(page).to have_content('Dog Shelter2')

    # expect(page).to have_content(shelter_1.name)
    # expect(page).to have_content(shelter_1.address)
    # expect(page).to have_content(shelter_1.city)
    # expect(page).to have_content(shelter_1.state)
    # expect(page).to have_content(shelter_1.zip)

  end
end
