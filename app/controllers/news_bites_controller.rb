class NewsBitesController < ApplicationController

  before_action :set_news_bite, only: [:show, :update, :destroy]

  respond_to :json

  def index
    @news_bites = NewsBite.all

    @news_bites.to_json


    respond_with @news_bites
  end

  def show
    respond_with @news_bite
  end

  def create
    @news_bite = NewsBite.create(news_bite_params)
    respond_with @news_bite, scope: {:send_edit_token => true}
  end

  # PATCH/PUT /sites/1
  def update
    if session[:allow_edit] == @news_bite.edit_key
      @news_bite.update(news_bite_params)
    end
    render json: @news_bite
  end

  # DELETE /sites/1
  def destroy
    @news_bite.destroy
    respond_with @news_bite
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_bite
      @news_bite = NewsBite.where(url: params.require(:id)).first
    end

    def news_bite_params
      params.require(:news_bite).permit(:top_text, :center_text)
    end
end
