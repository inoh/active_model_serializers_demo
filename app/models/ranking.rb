class Ranking
  include ActiveModel::Serialization

  attr_reader :user_id, :count

  def initialize(rank)
    @user_id = rank.user_id
    @count = rank.count
  end
end
