class CabinsController <ApplicationController
    
    before_action :auth_admin
     
    def index
        @cabins = Cabin.all
    end
     def new 
         @cabin = Cabin.new
     end 
end