class Sousuo1sController < ApplicationController
    def new 
        @sousuo1=Sousuo1.new
        @research_method=Book.uniq.pluck(:research_method)
        @participant=Book.uniq.pluck(:participant)
    end
    def create
        @sousuo1=Sousuo1.create(sousuo1_params)
        # @sousuo1.maxyear=  1
        # puts :min_year
        
        redirect_to @sousuo1
    end
    def show
         @sousuo1=Sousuo1.find(params[:id])
             
    end
    
    private
    
    def sousuo1_params
         params.require(:sousuo1).permit(:title, :research_method, :min_year, :max_year,:authors,
         :journal,:participant,:notincludemethod,:notincludeparticipant)
    end 
  

end
