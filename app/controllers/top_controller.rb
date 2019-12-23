class TopController < ActionController::Base

  def index
    @comments = Top.order('created_at DESC').page(params[:page]).per(6)
  end

  def new
  end

  def create
    Top.create(name: top_params[:name], image: top_params[:image], imageurl: top_params[:imageurl], text: top_params[:text])
    redirect_to root_path,notice: 'コメントを作成しました'
  end

  def show
  end

  private
  def top_params
    params.permit(:id, :name, :image, :imageurl, :text)
  end
end

