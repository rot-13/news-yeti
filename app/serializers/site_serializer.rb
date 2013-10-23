class SiteSerializer < ActiveModel::Serializer
  attributes :id, :short_name, :top_text, :center_text, :center_text_color
end
