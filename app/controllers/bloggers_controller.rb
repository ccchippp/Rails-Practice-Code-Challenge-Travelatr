class BloggersController < ApplicationController
    def index
        @bloggers = Blogger.all
    end

    # def show
    #     @blogger = Blogger.find(params[:id])
    # end

    def new

    end
    def blogger_params
        params.require(:blogger).permit(:name,:age,:bio)
    end

    def create
        blogger = Blogger.new(blogger_params)
        if blogger.save
            redirect_to :action => "index"
        else
            render :text => "The servers are on fire"
        end
    end
        



end