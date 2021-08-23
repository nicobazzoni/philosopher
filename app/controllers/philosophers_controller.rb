class PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:update, :destroy]

    def index
      philosophers = Philosopher.all.order(:name)
      render json: philosophers
    end
  
    def create
      philosopher = Philosopher.new(philosopher_params)
      if philosopher.save
        render json: philosopher
      else
        render json: {error: Philosopher.errors.full_messages.to_sentence}, status: 400
      end
    end
  
  
    def update
      @philosopher.update(philosopher_params)
      render json: @philosopher
    end
  
    def destroy
      @philosopher.destroy
      render json: {message: "A philosopher has perished !"}
    end
  
    private
  
    def set_philosopher
      @philosopher = Philosopher.find(params[:id])
    end
  
    def philosopher_params
      params.permit( :name,  :image, :idea, :book, :team_name)
    end
end
