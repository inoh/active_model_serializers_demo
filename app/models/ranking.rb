class Ranking
  include ActiveModel::Model
  include ActiveModel::Serialization

  attr_accessor :post

  delegate :user_id, :count, :user, to: :post
end
