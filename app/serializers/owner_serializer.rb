class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :pets
  has_many :todos, through: :pets

end
