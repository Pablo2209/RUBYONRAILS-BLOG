class PostController < ApplicationController
 /http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard/
  def index
    @posts = Post.all.order(created_at: :desc)

    if params[:title].present?
        @posts= Post.where('title = ?', params[:title])
      else
          @posts = Post.find_each
    end
  end

  def dashboard
  end

  def create
    @post = Post.create(title: params[:title], url_link: params[:url_link], content: params[:content])
  
  end
end
