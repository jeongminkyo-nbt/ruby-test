class UsersController < ApplicationController

  def create
    if params[:password] != params[:password_confirm]
      redirect_to :back, alert: "비밀번호가 서로 다릅니다"
    elsif User.where(email: params[:email])
           redirect_to :back, alert: "이메일이 중복됩니다"
    else
      User.create(email: params[:email],
                  password_digest: params[:password],
                  name: params[:name])
      redirect_to :posts
    end
  end

end
