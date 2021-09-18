class ThoughtsController < ApplicationController
    before_action :set_thought, only: [:destroy]
 
     def index
       thoughts = Thought.all
       render json: thoughts
     end
   
     def create
       thought = Thought.create(thought_params)
    
     render json: thought
     end
   
   
     def update
       @thought.update(thought_params)
       render json: @thought
     end
   
     def destroy
     
       @thought.destroy
       render json: {message: "A thought has perished !"}
     end
 
     # def likes
     #    if @thought.liked?
     #     render json:  @thought.likes + 1)
     #    end
     # end
   #   def favorite
   #    if @thought.favorited? 
   #    render json { ★ } class (with star)
   #    else 
   #   # render button without favorited class (without star)
   #   end
   # end
     private
   
     def set_thought
       @thought = Thought.find(params[:id])
     end
   
     def thought_params
       params.require(:thought).permit(:idea, :category, :philosopher_name, :user_id)
     end
 end