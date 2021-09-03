class FavoritesController < ApplicationController

    before_action :set_philosopher, only: [:create, :destroy]
  
    # Write the create action that corresponds to the POST route
    def create
      # Use the `favorite!` method to set the philosopher's favorite boolean to true
      @philosopher.favorite!
      redirect_to philosophers_url
    end
  
    # Write the destroy action that corresponds to the DELETE route
    def destroy
      # Use the `unfavorite!` method to set the philosopher's favorite boolean to false
      @philosopher.unfavorite!
     
    end
  
    private
  
    def set_philosopher
      @philosopher = philosopher.find(params[:id])
    end
  
  end