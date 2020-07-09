class User < ApplicationRecord
    has_many :favorites 
    has_many :locations, through: :favorites
    validates :username, :first_name, :last_name, presence: true 
    

    def to_s
        self.first_name + " " + self.last_name 
    end 

end
