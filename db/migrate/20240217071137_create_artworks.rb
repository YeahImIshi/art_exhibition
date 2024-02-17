class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :classification
      t.integer :begin_year
      t.integer :end_year
      t.string :medium
      t.text :provenance_text
      t.string :attribution
      t.string :credit_line

      t.timestamps
    end
  end
end
