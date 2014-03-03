class NumbersController < ApplicationController
  def index

  end

  def create
  	if session[:random].nil?
  		session[:random] = rand(1..100)
  	end

  	if params[:number].to_i > session[:random]
  		@message = "too high"
  	elsif params[:number].to_i < session[:random]
  		@message = "too low"
  	else 
  		@message = "you got it!"
  	end
  	render :index
  end

  def new
  end
end
