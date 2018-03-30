class RankingSerializer < ActiveModel::Serializer
  attributes :count

  belongs_to :user
end
