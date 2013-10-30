class AddEditKeyToNewsBite < ActiveRecord::Migration
  def change
    add_column :news_bites, :edit_key, :string
  end
end
