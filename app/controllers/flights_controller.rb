class FlightsController < ApplicationController
  def index
  	@flights = Flight.all
  end

  def new
  	@flight = Flight.new
    @flight.departue = Departue.new
    @flight.arrival = Arrival.new
  end

  def create
  	@flight = Flight.new(flight_params)
    if @flight.save
      redirect_to flights_path
  	else
  		render 'new'
  	end
  end

  def edit
    @flight = Flight.find(params[:id])
  end

  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to flights_path
    else
      render 'edit'
    end
  end

  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to flights_path
  end

  def show
    redirect_to flights_path
  end

  private
    def flight_params
  	 params.require(:flight).permit(:airline_id, :number,departue_attributes: [:flight_id, :date, :status], arrival_attributes: [:flight_id, :date, :status])
    end

end
