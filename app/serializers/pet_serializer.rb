class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :breed, :age
  has_many :todos
 
end
