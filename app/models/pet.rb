class Pet < ApplicationRecord
    has_many :todos
   
    validates :name, :kind, :breed, :age, presence: true
end
