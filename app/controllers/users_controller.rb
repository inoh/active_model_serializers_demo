class UsersController < ApplicationController
  def index
    render json: User.first.to_json(
      only: ['name', 'address'],
      include: {
        posts: {
          only: [:title, :note]
        }
      }
    )
  end

  def create
    render json: User.create(name: 'inoue', address: 'matsue')
  end
end
