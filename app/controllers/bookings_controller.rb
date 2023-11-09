class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  def index 
    @bookings = Booking.all
  end
    
  def new
    @booking = Booking.new(booking_params)
    @flight = @booking.flight
    params[:passenger_number].to_i.times {@booking.passengers.build}
    @flight_id = Flight.find(params[:booking][:id]).id
  end

  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def update
  end


  def edit
  end

  def destroy
  end

  private
  
  def set_booking
    @booking = Booking.find_by(id: params[:id])
  end

  def booking_params
      params.require(:booking).permit(:flight_id, :passengers_attributes => [:passenger_name, :passenger_email])
  end

end