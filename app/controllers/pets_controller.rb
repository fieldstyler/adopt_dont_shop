class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pets = Pet.all
    @shelter = Shelter.find(params[:id])
  end
end
