class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all

    dep = params[:departure_airport]
    arr = params[:arrival_airport]
    puts params
    puts dep
    puts arr

    # @my_flight = Flight.where("departure_airport_id = params[:departure_airport]").where("arrival_airport_id = params[:arrival_airport")
    @flights = Flight.where(departure_airport_id: dep, arrival_airport_id: arr)
    # puts @my_flight
    # Flight.where("departure_airport_id = 6").where("arrival_airport_id =4")
  end

  def view


  end
end
