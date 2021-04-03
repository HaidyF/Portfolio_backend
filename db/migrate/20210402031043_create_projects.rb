class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :quote
      t.string :description
      t.string :image_URL
      t.string :location
      t.integer :year
      t.integer :category_id

      t.timestamps
    end
  end
end
