class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.date :date_posted
      t.string :posted_by

      t.timestamps
    end
  end
end
