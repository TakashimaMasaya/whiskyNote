class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
    @user_blogs = current_user.blogs
  end

  def show
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params.merge(user_id: current_user.id))
    blog.save!
    redirect_to blogs_url, notice: "新しいblogを作成しました"
  end

  def update
    @blog.update!(blog_params)
    redirect_to blogs_url, notice: "blogの情報を更新しました"
  end

  def edit
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :description, :thumbnail)
  end

  def set_blog
    @blog = current_user.blogs.find(params[:id])
  end
end
