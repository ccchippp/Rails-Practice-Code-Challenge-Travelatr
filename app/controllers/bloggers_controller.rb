class BloggersController < ApplicationController
    def index
        @bloggers = Blogger.all
    end

    # def show
    #     @blogger = Blogger.find(params[:id])
    # end

    def new
        @blogger = Blogger.new

    end

    def create
        redirect_to :action => "index"
    end
        



end