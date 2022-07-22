class WhiskiesController < ApplicationController
  def index
    @whiskyies = current_user.whiskies
  end

  def show
    @whisky = current_user.whiskies.find(params[:id])
  end

  def new
    @whisky = Whisky.new
  end

  def edit
    @whisky = urrent_user.whiskies.find(params[:id])
  end

  def create
    whisky = Whisky.new(whisky_params.merge(user_id: current_user.id))
    whisky.save!
    redirect_to whiskies_url, notice: "新しいWhiskyを作成しました"
  end

  def update
    whisky = urrent_user.whiskies.find(params[:id])
    whisky.update!(whisky_params)
    redirect_to whiskies_url, notice: "Whiskyの情報を更新しました"
  end

  private

      # Only allow a list of trusted parameters through.
  def whisky_params
    params.require(:whisky).permit(:name, :description)
  end
end
