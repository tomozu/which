class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
      flash[:danger] = "ログインに失敗しました"
      render 'new'
    end
  end  
  
  def destroy
    session.delete(:user_id)
    flash[:notice]='ログアウトしました'
    redirect_to new_session_path
  end
  
  private
  
  def session_params
    params.require(:session).permit(:nickname, :email, :password,
                                          :password_confirmation)
  end
end
