class Sousuo1 < ApplicationRecord
#   attr_accessor :max_year
#   attr_accessor :min_year

    # def maxyear
    #     @maxyear
    # end
    # def maxyear= maxyear
    #     @maxyear=maxyear    
    # end
    
    # def minyear
    #     @minyear
    # end
    
    # def minyear= minyear
    #     @minyear = minyear
    # end
def sousuo1_books
    books=Book.all
    books=books.where(["title Like ?","%#{title}%"]) if title.present?
     books=books.where(["participant Like ?",participant]) if participant.present?
    books=books.where(["publish_year>= ?", min_year])  if min_year.present?
    books=books.where(["publish_year<= ?", max_year])  if max_year.present?
     books=books.where(["authors Like ?","%#{authors}%"])  if authors.present?
     books=books.where(["journal Like ?","%#{journal}%"])  if journal.present?
     
   
    if(notincludemethod)
    
        books=books.where(["research_method Not Like ?",research_method]) if research_method.present?
    else
        books=books.where(["research_method Like ?",research_method]) if research_method.present?
        
    end
     if(!notincludeparticipant)
     books=books.where(["participant Like ?",participant]) if participant.present?
       
    else
         books=books.where(["participant Not Like ?",participant]) if participant.present?
        
    end
 
  
  
   return books
end
end
