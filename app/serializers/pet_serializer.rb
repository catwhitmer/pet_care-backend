class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :age, :breed, :owner_id

  has_many :todos
  belongs_to :owner
  
end
