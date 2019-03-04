class SessionsController < ApplicationController
require 'pry'
  def new
  end

  def create
    binding.pry
    if params[:name] != '' || nil
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
  end
end
