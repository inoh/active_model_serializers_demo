class UsersController < ApplicationController
  def index
    @user = User.first
  end

  def create
    render json: User.create(name: 'inoue', address: 'matsue')
  end
end
