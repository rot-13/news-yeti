class NewsBiteSerializer < ActiveModel::Serializer
  def edit_url
    "#{news_bite_edit_url(object, object.edit_key)}"
  end

  attributes :top_text, :center_text, :url, :id, :created_now, :can_edit

  def id
    object.url
  end

  def include_created_now?
    object.created_at + 1.second > DateTime.now
  end

  def created_now
    true
  end

  def can_edit
    scope.try(:[], :can_edit).present?
  end


end
