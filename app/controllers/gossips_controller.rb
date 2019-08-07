class GossipsController < ApplicationController

    def index
        @gossips = Gossip.all
    end

    def create
        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: User.all.sample.id)
        if @gossip.save
            redirect_to gossips_path
        else
            render :new
        end
    end
    
    def new
        @gossip = Gossip.new
    end

    def show
        @gossips = Gossip.all
        @id = params[:id]
        @gossip = gossips[@id]
    end

    def update
        @gossips
    end

end
