class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render :new
  end
end
  def show
    @user = User.find(params[:id])
    @title = @user.username
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user #{@user.username}"
      redirect_to user_path
    else
      render('new')
    end
  end

end
