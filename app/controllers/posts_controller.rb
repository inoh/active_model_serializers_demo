class PostsController < ApplicationController
  def index
    render json: Post.all, each_serializer: PostsSerializer
  end

  def create
    render json: User.first.posts.create(title: 'json', note: '作り方')
  end

  def ranking
    ranking = Post.select(:user_id, 'count(*) as count').group(:user_id).preload(:user).map { |post| Ranking.new(post) }

    render json: ranking
  end
end
