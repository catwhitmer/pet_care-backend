class Todo < ApplicationRecord
    belongs_to :pet

    validates :description, :notes, presence: true
    validates_associated :pet
end
