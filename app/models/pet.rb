class Pet < ApplicationRecord
    has_many :todos
    belongs_to :owner

    validates :name, :kind, :age, :breed, presence: true
end
