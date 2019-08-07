class StaticController < ApplicationController
  def welcome
    @first_name = params[:first_name]
  end

  def contact
  end

  def team
  end
end
