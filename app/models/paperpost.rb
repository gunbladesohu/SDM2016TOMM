class Paperpost < ApplicationRecord
 validates_presence_of :title
 validates_presence_of :articlecategory
 validates_presence_of :description
 validates_presence_of :author
 validates_presence_of :journalname
 validates_presence_of :publishername
 validates_presence_of :pages
 validates_presence_of :volume
 validates_presence_of :publish_date
 validates_presence_of :submitted_date
end
