module SessionsHelper

# 전달된 사용자로 로그인

  def log_in(user)
    session[:user_id] = user.id
  end


end
