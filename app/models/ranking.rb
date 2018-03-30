class Ranking
  include ActiveModel::Serialization

  attr_reader :user_id, :count

  def initialize(post)
    @user_id = post.user_id
    @count = post.count
    @user = post.user
  end

  def user
    @user
  end
end
