class UsersController < ApplicationController
  def index
    render json: User.first
  end

  def create
    render json: User.create(name: 'inoue', address: 'matsue')
  end
end
