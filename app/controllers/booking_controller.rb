class BookingController < ApplicationController
    before_action :set_booking, only: %i[ show edit update destroy ]

    def new
        @booking = Booking.new
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def create
        @booking = Booking.new(booking_params)
    
        respond_to do |format|
          if @booking.save
            format.html { redirect_to flight_url(@flight), notice: "Flight was successfully created." }
            format.json { render :show, status: :created, location: @booking }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @booking.errors, status: :unprocessable_entity }
          end
        end
      end
end