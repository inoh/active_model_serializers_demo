class PostsSerializer < ActiveModel::Serializer
  attributes :title, :custom_title

  has_many :comments

  def custom_title
    "prefix_#{object.title}_suffix"
  end
end
