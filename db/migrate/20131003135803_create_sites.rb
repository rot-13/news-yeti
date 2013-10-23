class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :short_name
      t.string :top_text
      t.string :center_text
      t.string :center_text_color

      t.timestamps
    end
  end
end
