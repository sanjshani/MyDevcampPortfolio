class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end	

	def new 
		@portfolio_item = Portfolio.new
	end

	def create
	    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
# These are the parameters that's allow to go into the system >> i.e. what we type with new method!!!
# Additionally, we need to change the image tag 
	    respond_to do |format|
	    	if @portfolio_item.save
	    		format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
# Changed from redirect_to >> portfolio_item (let go back to enter another item ) to, >> portfolio_path (go back to index?? page)

	        else
	        	format.html { render :new }
	        end
	    end
	end

	def edit
		@portfolio_item = Portfolio.find(params[:id])
	end

	def update
		@portfolio_item = Portfolio.find(params[:id])

		respond_to do |format|
		  if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
		    format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
		  else
		    format.html { render :edit }
		  end
		end
	end

end