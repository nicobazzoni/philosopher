class  PhilosophersController < ApplicationController
    before_action :set_philosopher, only: [:show, :update, :destroy]
    before_action :set_branch, only: [:show, :update, :destroy]
    # GET /philosophers
    def index
      philosophers = Philosopher.all
      render json: philosophers, include: :branch
    end
  
    # GET /philosophers/1
    def show
      render json: @philosopher
    end
  
    # POST /philosophers
    def create
      philosopher = Philosopher.create(philosopher_params)
  
      if philosopher.save
        render json: @philosopher 
      else
        render json: philosopher.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /philosophers/1
    def update
      if @philosopher.update(philosopher_params)
        render json: @philosopher
      else
        render json: @philosopher.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /philosophers/1
    def destroy
      @philosopher.destroy
      render json: {message: "You deleted this philosopher."}
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_philosopher
        @philosopher = Philosopher.find(params[:id])
      end
      def set_branch
        branches = Branch.find(params[:id])
      end
      # Only allow a list of trusted parameters through.
      def philosopher_params
        params.require(:philosopher).permit(:name, :idea, :image, :branch_id, :user_id)
      end

end
