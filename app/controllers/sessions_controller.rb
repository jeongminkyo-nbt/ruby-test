class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.where(:email => params[:email], :password_digest => params[:password]).first

    unless user.nil?
      session[:user_id] = user.id
      redirect_to :posts
    else

      render 'new'
    end
  end

  def destroy
    p 'destory'
    reset_session
    redirect_to :posts
  end

end