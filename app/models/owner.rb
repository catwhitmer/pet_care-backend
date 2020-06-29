class Owner < ApplicationRecord
    has_many :pets
    has_many :todos, through: :pets

    validates :name, :email, presence: true
end
