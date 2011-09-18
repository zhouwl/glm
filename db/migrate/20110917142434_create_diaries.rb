class CreateDiaries < ActiveRecord::Migration
  def up
    create_table :diaries do |t|
      t.string :title
      t.string :category
      t.string :media
      t.text :content
      t.timestamps
    end
  end

  def down
    drop_table :diaries
  end
end
