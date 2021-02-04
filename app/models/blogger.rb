class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    validates :name, length: { minimum: 8 }
    validates :bio, length: { minimum: 30 }
end
