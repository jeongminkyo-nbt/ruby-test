class UsersController < ApplicationController

  def create
    User.create(email: params[:email],
                password_digest: params[:password],
                name: params[:name])
    redirect_to :posts
  end

end
