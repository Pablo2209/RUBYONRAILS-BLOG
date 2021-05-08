class Post < ApplicationRecord
   /validar los campos/ 
    validates :title, :url_link, :content, presence: true
end
