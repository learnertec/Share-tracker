class StocksController < ApplicationController
 
 def search
 if params[:stock].present?
  @stock = Stock.new_from_lookup(params[:stock])

    if @stock
    render partial: 'users/result'
    else
	flash[:danger] = "You have entered an incorrect string"
     render partial: 'users/result'
    end

  else
	flash[:danger] = "You have entered an empty search string"
     render partial: 'users/result'
 end
 end


end