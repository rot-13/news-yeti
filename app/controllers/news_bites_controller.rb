class NewsBitesController < ApplicationController

  before_action :set_news_bite, only: [:show, :update, :destroy]
  before_action :facebook_scraper, only: [:show]

  respond_to :json
  respond_to :html, only: [:show]

  def index
    @news_bites = NewsBite.all
    @news_bites.to_json

    respond_with @news_bites
  end


  def show
    respond_with @news_bite, scope: {:can_edit => can_edit?} do |format|
      format.html { render }
      format.jpg {
        html = render_to_string('news_bites/facebook_image', layout: false, formats: 'html')
        kit = IMGKit.new(html, quality: 100, width: 640, height: 360)
        send_data kit.to_img(:jpg), type: 'image/jpeg', disposition: :inline
      }
    end
  end

  def create
    @news_bite = NewsBite.create(news_bite_params)
    session[:edit_key] = @news_bite.edit_key
    respond_with @news_bite
  end

  # PATCH/PUT /sites/1
  def update
    @news_bite.update(news_bite_params) if can_edit?
    render json: @news_bite
  end

  # DELETE /sites/1
  def destroy
    @news_bite.destroy
    respond_with @news_bite
  end

  private

    def can_edit?
      session[:edit_key] == @news_bite.edit_key
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_news_bite
      @news_bite = NewsBite.where(url: params.require(:id)).first
    end

    def news_bite_params
      params.require(:news_bite).permit(:top_text, :center_text)
    end


  def facebook_scraper
    if request.user_agent.include? 'facebookexternalhit'
      render template: 'news_bites/facebook', layout: nil
    elsif request.format.html?
      render template: 'application/root'
    end
  end

end
