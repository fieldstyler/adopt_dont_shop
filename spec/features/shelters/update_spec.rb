require 'rails_helper'

RSpec.describe "shelter update page", type: :feature do
  it "can update shelter info" do
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

    expect(current_path).to eq("/shelters/#{shelter_1.id}")
    expect(page).to have_content('Dog Shelter2')


  end
end
