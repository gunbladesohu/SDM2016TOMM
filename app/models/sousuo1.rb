class Sousuo1 < ApplicationRecord

def sousuo1_books
    books=Book.all
    books1=Book.all
    books2=Book.all
    flag=false;
    flag1=false;
    flag2=false;
    if title.present?
     flag=true;
    books=books.where("title Like ?","%#{title}%") 
    end
    if min_year.present?
     flag=true;
    books=books.where(["publish_year>= ?", min_year])  
    end
    if max_year.present?
     flag=true;
    books=books.where(["publish_year<= ?", max_year])  
    end
    if authors.present?
     flag=true;
    books=books.where(["authors Like ?","%#{authors}%"])  
    end
     
   
    if(notincludemethod)
        if research_method.present?
         flag=true;
        books=books.where(["research_method Not Like ?",research_method]) 
        end
    else
        if research_method.present?
         flag=true;
        books=books.where(["research_method Like ?",research_method]) 
        end
        
    end
    
     if(notincludeparticipant)
      if participant.present?
       flag=true;
     books=books.where(["participant Not Like ?",participant]) 
      end
      
    else 
     if participant.present?
      flag=true;
     books=books.where(["participant Like ?",participant]) 
     end
     end
     if(notincludemetrix)
       if metrix.present?
        flag=true;
     books=books.where(["research_metrix Not Like ?",metrix])
       end
    else
     if metrix.present?
      flag=true;
     books=books.where(["research_metrix Like ?",metrix]) 
     end
     end
     
     if(notincludestatus)
     if status.present? 
      flag=true;
     books=books.where(["paper_status Not Like ?",status]) 
     end
    else 
      if status.present?
       flag=true;
     books=books.where(["paper_status Like ?",status])
      end
     end

    
     
#   /////////
    if title1.present?
     flag1=true
    books1=books1.where("title Like ?","%#{title1}%") 
    end
    if min_year1.present?
      flag1=true
    books1=books1.where(["publish_year>= ?", min_year1])  
    end
    if max_year1.present?
      flag1=true
    books1=books1.where(["publish_year<= ?", max_year1])  
    end
    if authors1.present?
      flag1=true
    books1=books1.where(["authors Like ?","%#{authors1}%"])  
    end
     
   
    if(notincludemethod1)
     if research_method1.present?
       flag1=true
        books1=books1.where(["research_method Not Like ?",research_method1])
     end
    else
     if research_method1.present?
       flag1=true
        books1=books1.where(["research_method Like ?",research_method1]) 
     end
    end
    
     if(notincludeparticipant1)
      if participant1.present?
        flag1=true
      books1=books1.where(["participant Not Like ?",participant1]) 
     end
     else
     if participant1.present?
       flag1=true
     books1=books1.where(["participant Like ?",participant1]) 
     end
     end
     if(notincludemetrix1)
      if metrix1.present?
        flag1=true
     books1=books1.where(["research_metrix Not Like ?",metrix1]) 
      end
    else 
     if metrix1.present?
       flag1=true
     books1=books1.where(["research_metrix Like ?",metrix1]) 
     end
     end
     
     if(notincludestatus1)
       if status1.present?
         flag1=true
     books1=books1.where(["paper_status Not Like ?",status1])
       end
    else 
     if status1.present?
       flag1=true
     books1=books1.where(["paper_status Like ?",status1]) 
     end
     end
   
   # #  /////
      if title2.present?
       flag2=true
    books2=books2.where("title Like ?","%#{title2}%") 
      end
    if min_year2.present?
     flag2=true
    books2=books2.where(["publish_year>= ?", min_year2])  
    end
    if max_year2.present?
     flag2=true
    books2=books2.where(["publish_year<= ?", max_year2])  
    end
    if authors2.present?
     flag2=true
     books2=books2.where(["authors Like ?","%#{authors2}%"])  
    end
     
   
    if(notincludemethods2)
        if research_method2.present?
         flag2=true
         books2=books2.where(["research_method Not Like ?",research_method2]) 
         
        end
    else
     if research_method2.present?
      flag2=true
         books2=books2.where(["research_method Like ?",research_method2]) 
     end
    end
    
     if(notincludeparticipant2)
      if participant2.present?
       flag2=true
      books2=books2.where(["participant Not Like ?",participant2]) 
      end
    else  
      if participant2.present?
       flag2=true
     books2=books2.where(["participant Like ?",participant2])
      end
     end
     if(notincludemetrix2)
      if metrix2.present?
       flag2=true
      books2=books2.where(["research_metrix Not Like ?",metrix2]) 
      end
    else 
     if metrix2.present?
      flag2=true
     books2=books2.where(["research_metrix Like ?",metrix2]) 
     end
     end
     
     if(notincludestatus1)
       if status2.present?
              flag2=true
      books2=books2.where(["paper_status Not Like ?",status2])
       end
    else  
      if status2.present?
             flag2=true
     books2=books2.where(["paper_status Like ?",status2])
      end
     end
    # return books+books1+books2
     if (flag==true and flag1==true and flag2==true)
      return books+books1+books2
     end
     if (flag==false and flag1==true and flag2==true)
      return books1+books2
     end
     if (flag==false and flag1==false and flag2==true)
      return books2
     end
      if (flag==true and flag1==false and flag2==true)
      return books+books2
      end
      if (flag==true and flag1==false and flag2==false)
      return books
      end
      if (flag==false and flag1==true and flag2==false)
      return books1
      end
      if (flag==true and flag1==true and flag2==false)
      return books+books1
      end
      if (flag==false and flag1==false and flag2==false)
      return books
      end
      
end
end
