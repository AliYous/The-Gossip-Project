class SessionsController < ApplicationController
  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])
    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts "granted access"
      flash.now[:success] = 'Hello <%=user.first_name%>, vous êtes bien connectés'
      # redirige où tu veux, avec un flash ou pas
    else
      flash.now[:danger] = 'Invalid email/password combination'
      puts "denied access"
      render 'new'
    end
  end
end
