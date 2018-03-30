class PostsController < ApplicationController
  def index
    render json: Post.all, each_serializer: PostsSerializer
  end

  def create
    render json: User.first.posts.create(title: 'json', note: '作り方')
  end
end
