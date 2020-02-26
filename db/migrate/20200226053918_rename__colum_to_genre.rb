class RenameColumToGenre < ActiveRecord::Migration[5.2]
  def change
  	rename_column :items, :jenre_id, :genre_id
  end
end
