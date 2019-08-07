class Gossip < ApplicationRecord
    validates :title, presence: {message: "Le titre doit être renseigné"}
    validates :title, length: { in: 3..14 }
    validates :content, presence: {message: "Saisissez le contenu de votre gossip!"} 
    
    belongs_to :user
    has_many :tags
end
