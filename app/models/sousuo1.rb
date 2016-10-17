class Sousuo1 < ApplicationRecord

def sousuo1_books
    books=Book.all
    books1=Book.all
   books2=Book.all
    if title.present?
    books=books.where("title Like ?","%#{title}%") 
    end
    if min_year.present?
    books=books.where(["publish_year>= ?", min_year])  
    end
    if max_year.present?
    books=books.where(["publish_year<= ?", max_year])  
    end
    if authors.present?
    books=books.where(["authors Like ?","%#{authors}%"])  
    end
     
   
    if(notincludemethod)
    
        books=books.where(["research_method Not Like ?",research_method]) if research_method.present?
    else
        books=books.where(["research_method Like ?",research_method]) if research_method.present?
        
    end
    
     if(notincludeparticipant)
     books=books.where(["participant Not Like ?",participant]) if participant.present?
       
    else books=books.where(["participant Like ?",participant]) if participant.present?
        
     end
     if(notincludemetrix)
     books=books.where(["research_metrix Not Like ?",metrix]) if metrix.present?
       
    else books=books.where(["research_metrix Like ?",metrix]) if metrix.present?
        
     end
     
     if(notincludestatus)
     books=books.where(["paper_status Not Like ?",status]) if status.present?
       
    else books=books.where(["paper_status Like ?",status]) if status.present?
        
     end
#   /////////
    if title1.present?
    books1=books1.where("title Like ?","%#{title1}%") 
    end
    if min_year1.present?
    books1=books1.where(["publish_year>= ?", min_year1])  
    end
    if max_year1.present?
    books1=books1.where(["publish_year<= ?", max_year1])  
    end
    if authors1.present?
    books1=books1.where(["authors Like ?","%#{authors1}%"])  
    end
     
   
    if(notincludemethod1)
    
        books1=books1.where(["research_method Not Like ?",research_method1]) if research_method1.present?
    else
        books1=books1.where(["research_method Like ?",research_method1]) if research_method1.present?
        
    end
    
     if(notincludeparticipant1)
     books1=books1.where(["participant Not Like ?",participant1]) if participant1.present?
       
    else books1=books1.where(["participant Like ?",participant1]) if participant1.present?
        
     end
     if(notincludemetrix1)
     books1=books1.where(["research_metrix Not Like ?",metrix1]) if metrix1.present?
       
    else books1=books1.where(["research_metrix Like ?",metrix1]) if metrix1.present?
        
     end
     
     if(notincludestatus1)
     books1=books1.where(["paper_status Not Like ?",status1]) if status1.present?
       
    else books1=books1.where(["paper_status Like ?",status1]) if status1.present?
        
     end
   #  /////
      if title2.present?
    books2=books2.where("title Like ?","%#{title2}%") 
    end
    if min_year2.present?
    books2=books2.where(["publish_year>= ?", min_year2])  
    end
    if max_year2.present?
    books2=books2.where(["publish_year<= ?", max_year2])  
    end
    if authors2.present?
     books2=books2.where(["authors Like ?","%#{authors2}%"])  
    end
     
   
    if(notincludemethods2)
    
         books2=books2.where(["research_method Not Like ?",research_method2]) if research_method2.present?
    else
         books2=books2.where(["research_method Like ?",research_method2]) if research_method2.present?
        
    end
    
     if(notincludeparticipant2)
      books2=books2.where(["participant Not Like ?",participant2]) if participant2.present?
       
    else  books2=books2.where(["participant Like ?",participant2]) if participant2.present?
        
     end
     if(notincludemetrix2)
      books2=books2.where(["research_metrix Not Like ?",metrix2]) if metrix2.present?
       
    else  books2=books2.where(["research_metrix Like ?",metrix2]) if metrix2.present?
        
     end
     
     if(notincludestatus1)
      books2=books2.where(["paper_status Not Like ?",status2]) if status2.present?
       
    else  
     books2=books2.where(["paper_status Like ?",status2]) if status2.present?
        
     end
    return books+books1+books2
   
end
end
