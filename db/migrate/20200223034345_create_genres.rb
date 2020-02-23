class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|

      t.timestamps
      t.string :genre_name
      t.boolean :display_status
    end
  end
end
