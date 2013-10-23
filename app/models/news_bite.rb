class NewsBite < ActiveRecord::Base

  acts_as_url :top_text#, sync_url: true

  def to_param
    url
  end

end
