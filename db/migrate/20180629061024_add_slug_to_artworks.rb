class AddSlugToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :slug, :string
    add_index :artworks, :slug, unique: true
  end
end
