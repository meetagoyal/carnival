class CruisesController < ApplicationController
  before_action :auth_admin


   def index
       @ships = Ship.all
       @cruises = Cruise.all
    end
  
  def new
    @ships = Ship.all
    @cruise = Cruise.new
  end

  def create
    
           @cruise = Cruise.new
           
           @cruise.name =  params[:cruise][:name]
           @cruise.duration = params[:cruise][:duration]
           @cruise.base_cost = params[:cruise][:base_cost]
           @cruise.ship_id = params[:cruise][:ship].to_i
           @cruise.dates = params[:cruise][:date].to_s.split(",").map{|str| Date.parse(str)}.to_a
        
    if @cruise.save
      redirect_to cruises_path
    else
      @ships = Ship.all
      render 'new'
    end
    
    
  end
 
  
end