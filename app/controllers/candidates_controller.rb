class CandidatesController < ApplicationController
	def index
	end
    
    def show
    end
    http_basic_authenticate_with :name => "admin", :password => "password1234" 
end
