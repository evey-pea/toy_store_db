class CreateToysCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :toys_categories do |t|
      t.references :toy, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
