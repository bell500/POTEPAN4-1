class PostsController < ApplicationController
    protect_from_forgery

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        post_params = params.require(:post).permit(:title,:start_at,:finish_at,:all,:memo)
        @post = Post.new(post_params)
        if @post.save
          flash[:notice]="新規登録しました"
          redirect_to posts_path
        else
          flash.now[:alert] ="登録に失敗しました"
          render:new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        post_params = params.require(:post).permit(:title,:start_at,:finish_at,:all,:memo)
        if @post.update(post_params)
            flash[:notice]="更新しました"
            redirect_to posts_path
        else
            flash.now[:alert] ="更新に失敗しました"
            render:edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        flash[:notice]="削除しました"
        redirect_to posts_path
    end



end