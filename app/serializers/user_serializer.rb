class UserSerializer < ActiveModel::Serializer
  attributes :name, :address

  has_many :posts
end
