class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def random
    redirect_to "/#{NewsBite.random.url}"
  end


  private
  def set_locale
    remote_ip = request.remote_ip
    #remote_ip = '81.218.176.116' - israel ip

    geo_info = geoip.country(remote_ip)
    if geo_info != nil
      @laguage = geo_info[:country_code2] == 'IL' ? 'he' : 'en'
    else
      @laguage = {}
    end

    if remote_ip == "127.0.0.1" #todo: check for other local addresses or set default value
      @laguage = 'he'
    end

  end

  def geoip
    @@geoip ||= GeoIP.new("#{Rails.root}/db/GeoIP.dat")
  end

end
