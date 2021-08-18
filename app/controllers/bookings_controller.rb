class BookingsController < ApplicationController
  def index
    @bookings = booking.all
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    @gnome = Gnome.find(params[:gnome_id])
    authorize @booking
  end

  def new
    authorize @booking
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new
  end

  def create
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new(booking_params)
    @booking.gnome = @gnome
    @booking.user = current_user
    @booking.price_total= 84
    authorize @booking
    if @booking.save
      redirect_to  gnome_booking_path(@gnome, @booking)
    else
      redirect_to  gnome_booking_path(@gnome, @booking)
    end
  end

  def destroy
    @booking = booking.find(params[:id])
    @gnome = @booking.gnome
    authorize @booking
    @booking.destroy
    redirect_to gnome_bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit( :date_start, :date_end, :gnome_id, :user_id )
  end

end
