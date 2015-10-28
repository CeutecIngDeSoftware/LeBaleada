class FollowRestaurantsController < ApplicationController
  before_action :set_follow_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /follow_restaurants
  # GET /follow_restaurants.json
  def index
    @follow_restaurants = FollowRestaurant.all
  end

  # GET /follow_restaurants/1
  # GET /follow_restaurants/1.json
  def show
  end

  # GET /follow_restaurants/new
  def new
    @follow_restaurant = FollowRestaurant.new
  end

  # GET /follow_restaurants/1/edit
  def edit
  end

  # POST /follow_restaurants
  # POST /follow_restaurants.json
  def create
    @follow_restaurant = FollowRestaurant.new(follow_restaurant_params)

    respond_to do |format|
      if @follow_restaurant.save
        format.html { redirect_to @follow_restaurant, notice: 'Follow restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @follow_restaurant }
      else
        format.html { render :new }
        format.json { render json: @follow_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follow_restaurants/1
  # PATCH/PUT /follow_restaurants/1.json
  def update
    respond_to do |format|
      if @follow_restaurant.update(follow_restaurant_params)
        format.html { redirect_to @follow_restaurant, notice: 'Follow restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @follow_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @follow_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_restaurants/1
  # DELETE /follow_restaurants/1.json
  def destroy
    @follow_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to follow_restaurants_url, notice: 'Follow restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follow_restaurant
      @follow_restaurant = FollowRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follow_restaurant_params
      params.require(:follow_restaurant).permit(:user_id, :restaurant_id)
    end
end
