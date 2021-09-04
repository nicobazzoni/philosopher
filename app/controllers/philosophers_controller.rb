class PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:update, :destroy]

    def index
      philosophers = Philosopher.all.order(:name)
      render json: philosophers
    end
  
    def create
      philosopher = Philosopher.create(philosopher_params)
      begin
      philosopher.save
        render json: philosopher
      rescue ActiveRecord::RecordNotUnique => e
      
      return
      
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

    # def likes
    #    if @philosopher.liked?
    #     render json:  @philosopher.likes + 1)
    #    end
    # end
  #   def favorite
  #    if @philosopher.favorited? 
  #    render json { ★ } class (with star)
  #    else 
  #   # render button without favorited class (without star)
  #   end
  # end
    private
  
    def set_philosopher
      @philosopher = Philosopher.find(params[:id])
    end
  
    def philosopher_params
      params.require(:philosopher).permit(:id, :name, :image, :idea, :favorite, :notes, :section)
    end
end
