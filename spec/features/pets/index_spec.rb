require 'rails_helper'

RSpec.describe "pet page", type: :feature do
  it "can see all pet names" do
    shelter_1 = Shelter.create!(name: "Dog Shelter",
                               address: "123 dog way",
                               city: "Denver",
                               state: "CO",
                               zip: "80104")
    pet_1 = shelter_1.pet.create!(image: "image_link",
                             name: "Larry",
                             age: 1,
                             sex: "Male",
                             current_shelter: "Dog Shelter")
    pet_2 = shelter_1.pet.create!(image: "image_link",
                             name: "Apollo",
                             age: 2,
                             sex: "Male",
                             current_shelter: "Another Dog Shelter")
    visit "/pets"

    expect(page).to have_content(pet_1.name)
    expect(page).to have_content(pet_2.name)
  end
end
