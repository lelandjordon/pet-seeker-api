class PetsController < ApplicationController
  def index
    # @food = Food.find(params[:food_id])
    @pets = Pet.all.order(:created_at)

    render json: @pets.to_json, status: :ok
  end

  def show
    @pets = Pet.find(params[:id])

    render json: @pets.to_json, status: :ok
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save(pet_params)
      render json: @pet.to_json, status: :created
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      render json: @pet.to_json, status: :ok
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    render json: {message: "success"}, status: :ok
  end

  private
    #  Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :age, :breed, :species, :photo_url)
    end
end
