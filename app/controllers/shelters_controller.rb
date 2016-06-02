class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all.order(:created_at) do
      @pets = Pet.find_all
    end

    # render json: @shelters.to_json, status: :ok
    render json: @shelters.to_json(:include => { :pets => {:only => :name} }), status: :ok
  end
  def show
    @shelter = Shelter.find(params[:id])
    render json: @shelter.to_json(:include => :pets ), status: :ok
  end

  def create
    @shelter = Shelter.new(food_params)

    if @shelter.save
      render json: @shelter.to_json, status: :created
    else
      render json: @shelter.errors, status: :unprocessable_entity
    end
  end

  def update
    @shelter = Shelter.find(params[:id])
    if @shelter.update(food_params)
      render json: @shelter.to_json, status: :ok
    else
      render json: @shelter.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shelter = Shelter.find(params[:id])
    @shelter.destroy
    render json: {message: "success"}, status: :ok
  end

  # private
  # Never trust parameters from the scary internet, only allow the white list through.
  # def food_params
  #   params.require(:food).permit(:name, :photo_url)
  # end
end
