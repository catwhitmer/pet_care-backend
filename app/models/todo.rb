class Todo < ApplicationRecord
    belongs_to :pet

    validates :description, :date, presence: true
    validates_associated :pets
end
