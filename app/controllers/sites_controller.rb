class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  respond_to :json

  def index
    @sites = Site.all
    respond_with @sites
  end

  def show
    respond_with @site
  end

  def create
    @site = Site.new(site_params)
    @site.save
    respond_with @site
  end

  # PATCH/PUT /sites/1
  def update
    @site.update(site_params)
    respond_with @site
  end

  # DELETE /sites/1
  def destroy
    @site.destroy
    respond_with @site
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def site_params
      params.require(:site).permit(:short_name, :top_text, :center_text, :center_text_color)
    end
end
