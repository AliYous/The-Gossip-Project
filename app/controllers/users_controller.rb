class UsersController < ApplicationController

  def show
    @users = User.all
    @id = params[:id].to_i
    @user = @users[@id]
    @first_name = @user.first_name
    @last_name = @user.last_name
    @age = @user.age
    @email = @user.email
    @city = City.find(@user.city_id).name
  end

  def new
    @user = User.new
  end
  
  def create 
    puts params
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    if @user.save
      redirect_to welcome_path(@user.first_name)
    else
      render :new
    end
  end

end
