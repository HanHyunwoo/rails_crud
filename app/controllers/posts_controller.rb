class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    # 1.
    post = Post.create(title: params[:title], body: params[:body])

    # text 안에 변수를 넣을 때 (stringinterpolation)
    # 반드시 ""로 해줘야 함.
    redirect_to "/posts/#{post.id}"

    # # 1-1
    # Post.create(:title => params[:title], :body => params[:body])
    #
    # # 2.
    # post = Post.new
    # post.title = params[:title]
    # post.body = params[:body]
    # post.save
  end

  def show
    @post = Post.find(params[:id])
  end


  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def edit2
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(title: params[:title], body: params[:body])
    redirect_to '/'
  end


end
