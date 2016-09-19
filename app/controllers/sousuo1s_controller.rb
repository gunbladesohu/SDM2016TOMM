class Sousuo1sController < ApplicationController
    def new 
        @sousuo1=Sousuo1.new
       
    end
    def create
        @sousuo1=Sousuo1.create(sousuo1_params)
        redirect_to @sousuo1
    end
    def show
        @sousuo1=Sousuo1.find(params[:id])
    end
    private
    def sousuo1_params
        params.require(:sousuo1).permit(:title)
    end 
    
end
