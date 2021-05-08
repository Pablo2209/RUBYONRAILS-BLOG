class Post < ApplicationRecord
   /validar los campos/ 
    validates :title, :url_link, :content, presence: true

    /Eliminar cierta parabra que no queramos/
    before_save :replace_word

    def replace_word
        self.content = self.content.gsub "spoiler", " "
    end
end
