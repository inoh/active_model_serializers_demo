class CommentsController < ApplicationController
  before_action :set_post

  def create
    render json: @post.comments.create(user: User.first, note: 'お願いします！')
  end

  private

  def set_post
    @post = Post.find(params.require(:post_id))
  end
end
