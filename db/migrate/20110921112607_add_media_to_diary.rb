class AddMediaToDiary < ActiveRecord::Migration
  def change
    remove_column :diaries, :media
    add_column :diaries, :media_file_name,    :string
    add_column :diaries, :media_content_type, :string
    add_column :diaries, :media_file_size,    :integer
    add_column :diaries, :media_updated_at,   :datetime
  end
end
