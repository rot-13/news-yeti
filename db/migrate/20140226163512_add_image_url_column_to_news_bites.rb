class AddImageUrlColumnToNewsBites < ActiveRecord::Migration
  def change
    add_column :news_bites, :image_url, :string
  end
end
