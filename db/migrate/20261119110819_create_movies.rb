class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :poster
      t.string :string
      t.float :rating

      t.timestamps
    end
  end
end
