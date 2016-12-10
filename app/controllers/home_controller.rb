class HomeController < ApplicationController

	layout "landing", :only => [:index]

	def index
		if user_signed_in?
			redirect_to dashboard_index_path
		end
	end

	def landing_page
	end

end