class NewsBiteSerializer < ActiveModel::Serializer
  def edit_url
    "#{news_bite_edit_url(object, object.edit_key)}"
  end

  attributes :top_text, :center_text, :url, :id, :edit_url

  def id
    object.url
  end

  def include_edit_url?
    scope.try(:[], :send_edit_token).present?
  end
end
