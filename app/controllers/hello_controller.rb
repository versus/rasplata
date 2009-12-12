class HelloController < ApplicationController

	def index
		@title = "Привет Мир!"
	end

    def show
      respond_to do |format|
        format.html
        format.pdf { render :layout => false }
      end
    end

end

