class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false, unique: true
      t.timestamps
    end
  end
end
