class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy, :update_location]

  has_scope :name_contains
  has_scope :city_contains

  # GET /trips
  def index
    @trips = apply_scopes(Trip)

    render json: @trips
  end

  # GET /trips/1
  def show
    render json: @trip
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
    head :no_content
  end
  # POST /trips/1/update_location
  def update_location
    UpdateTripLocationJob.perform_async(@trip.id, place_params)
    render nothing: true , status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trip_params
      params.require(:trip).permit(:name, :city, :driver_id, :status, :source_id, :destination_id, :seats, :price)
    end

    def place_params
      params.require(:place).permit(:name, :city, :longitude, :latitude)
    end
end
