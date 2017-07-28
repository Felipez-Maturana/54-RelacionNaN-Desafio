class CreateMovieTags < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_tags do |t|
      t.references :movie, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
