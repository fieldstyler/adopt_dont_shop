require 'rails_helper'
# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system
RSpec.describe "shelter page", type: :feature do
  it "can see all shelter names" do
    shelter_1 = Shelter.create!(name: "Dog Shelter",
                               address: "123 dog way",
                               city: "Denver",
                               state: "CO",
                               zip: "80104")
    shelter_2 = Shelter.create!(name: "Another Dog Shelter",
                               address: "456 another dog way",
                               city: "Dogville",
                               state: "RI",
                               zip: "80156")
    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end
