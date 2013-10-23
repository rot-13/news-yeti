class NewsBiteSerializer < ActiveModel::Serializer
  attributes :top_text, :center_text, :url, :id

  def id
    object.url
  end
end
