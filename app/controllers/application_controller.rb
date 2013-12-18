class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def root
    permit_news_bite_update
  end

  def random
    redirect_to "/#{NewsBite.random.url}"
  end

  private
  def permit_news_bite_update
    if params[:edit_key].present?
      allow_edit =
          NewsBite.find_by_url_and_edit_key(params[:news_bite], params[:edit_key]).present?
    else
      allow_edit  = false
    end

    session[:allow_edit] = allow_edit ? params[:edit_key] : nil
  end

end
