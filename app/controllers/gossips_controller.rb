class GossipsController < ApplicationController

    def index
        @gossips = Gossip.all
        puts "$!$!" *30
        puts Gossip.first.id
        puts "$!$!" *30
    end

    def create
        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: User.all.sample.id)
        if @gossip.save
            redirect_to gossips_new_success_path 
        else
            render :new
        end
    end
    
    def new
        @gossip = Gossip.new
    end

    def show
        @gossips = Gossip.all
        @id = params[:id].to_i

        puts "$!$!" *30
        puts @id
        puts "$!$!" *30

        @first_name = User.find(@gossips[@id].user_id).first_name

        puts "$!$!" *30
        puts @first_name
        puts "$!$!" *30

        @last_name = User.find(@gossips[@id].user_id).last_name
        puts "$!$!" *30
        puts @last_name
        puts "$!$!" *30

        @user_id = User.find(@gossips[@id].user_id).id

        @title = @gossips[@id].title
        @content = @gossips[@id].content
    end

    def update
    end

end
