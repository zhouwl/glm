class CreateTimeEpisodes < ActiveRecord::Migration
  def change
    create_table :time_episodes do |t|
      t.string :line
      t.string :title
      t.text :content
      t.string :pic_file_name
      t.string :pic_content_type
      t.integer :pic_file_size
      t.datetime :pic_update_at
      t.float :order

      t.timestamps
    end
  end
end
