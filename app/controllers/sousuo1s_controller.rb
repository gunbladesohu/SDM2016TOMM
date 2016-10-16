class Sousuo1sController < ApplicationController
    def index
    @sousuo1s = Sousuo1.all
     end
    def new 
        @sousuo1=Sousuo1.new
        @research_method=Book.uniq.pluck(:research_method)
        @participant=Book.uniq.pluck(:participant)
        @status=Book.uniq.pluck(:paper_status)
        @metrix=Book.uniq.pluck(:research_metrix)
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
         params.require(:sousuo1).permit(:title, :research_method, :min_year, :max_year,:authors,
         :journal,:participant,:notincludemethod,:notincludeparticipant,:status,:metrix,:notincludestatus,:notincludemetrix,
         :title1, :research_method1, :min_year1, :max_year1,:authors1,
         :journal1,:participant1,:notincludemethod1,:notincludeparticipant1,:status1,:metrix1,:notincludestatus1,:notincludemetrix1)
    end 
  

end
