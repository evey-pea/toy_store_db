class RemovePostedByFromToys < ActiveRecord::Migration[5.2]
  def change
    remove_column :toys, :posted_by, :string
  end
end
