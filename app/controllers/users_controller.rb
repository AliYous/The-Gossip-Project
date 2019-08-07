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
end
