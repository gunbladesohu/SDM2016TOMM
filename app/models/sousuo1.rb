class Sousuo1 < ApplicationRecord
    def sousuo2_papers
    papers=Paper.all
    papers=papers.where(["title Like ?","%#{title}%"]) if title.present?
   return papers
    end
end
