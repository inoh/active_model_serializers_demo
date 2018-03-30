class CommentSerializer < ActiveModel::Serializer
  attributes :note

  belongs_to :user
end
