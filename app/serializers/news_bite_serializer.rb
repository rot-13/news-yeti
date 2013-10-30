class NewsBiteSerializer < ActiveModel::Serializer
  attributes :top_text, :center_text, :url, :id, :edit_key

  def id
    object.url
  end

  def include_edit_key?
    scope.try(:[], :send_edit_token).present?
  end
end
