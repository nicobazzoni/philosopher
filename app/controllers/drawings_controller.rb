class DrawingsController < ApplicationController
    
    def index
        drawings = Drawing.all
        render json: drawings
      end
    
      def create
        Drawing = Drawing.create(drawing_params)
     
      render json: drawing
      end
    
    
      def update
        @drawing.update(drawing_params)
        render json: @drawing
      end
    
      def destroy
      
        @drawing.destroy
        render json: {message: "A drawing has perished !"}
      end
      
      private
   
      def set_drawing
        @drawing = drawing.find(params[:id])
      end
    
      def drawing_params
        params.require(:drawing).permit(:sketch, :username)
      end
end
