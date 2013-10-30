class NewsBite < ActiveRecord::Base

  acts_as_url :top_text#, sync_url: true

  scope :random, -> { order('random()').first }

  after_create :generate_edit_key

  def to_param
    url
  end

  def generate_edit_key
    self.update!(:edit_key => SecureRandom.urlsafe_base64(22))
  end

end
