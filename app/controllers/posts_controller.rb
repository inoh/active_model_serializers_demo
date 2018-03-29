class PostsController < ApplicationController
  def create
    render json: User.first.posts.create(title: 'json', note: '作り方')
  end
end
