class ArticlesController < ApplicationController
    before_action :authenticate_user!
    before_action  :get_user_article, only: [:show,:edit,:update,:destroy]
    def index
        @articles=current_user.articles.order("created_at ASC")
    end
    def new
        @article=current_user.articles.new
    end
    def create
        @article=current_user.articles.new(article_params)
        if @article.save
            redirect_to articles_path
        else
            render "new"
        end
    end
    def show
       
    end
    def edit
       
    end
    def update
        if @article.update(article_params)
            redirect_to articles_path
        else
            render "edit"
        end

    end
    def destroy
        
        @article.destroy
        redirect_to articles_path
    end

    private
        def article_params
            params.require(:article).permit(:title,:body, :image,:user_id)
        end
        def get_user_article
            @article=current_user.articles.find_by_id(params[:id])
        end
end
