require 'rails_helper'

RSpec.describe Shelter, type: :model do
  describe "validations" do
    it {validate_presence_of (:name)}
    it {validate_presence_of (:address)}
    it {validate_presence_of (:city)}
    it {validate_presence_of (:state)}
    it {validate_presence_of (:zip)}
  end

  describe 'relationships' do
    it {should have_many(:pet)}
  end
end
