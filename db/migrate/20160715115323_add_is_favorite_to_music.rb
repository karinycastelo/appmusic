class AddIsFavoriteToMusic < ActiveRecord::Migration[5.0]
  def change
    add_column :musics, :is_favorite, :boolean
  end
end
