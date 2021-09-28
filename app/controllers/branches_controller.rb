class  BranchesController < ApplicationController
    before_action :set_branch, only: [:show, :update, :destroy]

    # GET /branchs
    def index
      branches = Branch.all
  
      render json: branches, except: [:created_at, :updated_at], include: [philosophers: {except: [:created_at, :updated_at]}]
  
    end
  
    # GET /branchs/1
    def show
      render json: @branch, except: [:created_at, :updated_at], include: [philosophers: {except: [:created_at, :updated_at]}]
    end
  
    # POST /branchs
    def create
      branch = Branch.new(branch_params)
  
      if Branch.save
        render json: branch, status: :created, location: branch
      else
        render json: branch.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /branchs/1
    def update
      if @branch.update(branch_params)
        render json: @branch
      else
        render json: @branch.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /branchs/1
    def destroy
      @branch.destroy
      render json: {message: "You've deleted successfully!"}
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_branch
        @branch = Branch.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def branch_params
        params.require(:branch).permit(:first, :last, :joined, :left, :image)
      end
end
