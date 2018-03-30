class PostsSerializer < ActiveModel::Serializer
  attributes :title, :custom_title

  def custom_title
    "prefix_#{object.title}_suffix"
  end
end
