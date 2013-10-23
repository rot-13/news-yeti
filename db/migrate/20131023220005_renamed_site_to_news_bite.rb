class RenamedSiteToNewsBite < ActiveRecord::Migration
  def change
    rename_table :sites, :news_bites
    remove_columns :news_bites, :short_name, :center_text_color
  end
end
