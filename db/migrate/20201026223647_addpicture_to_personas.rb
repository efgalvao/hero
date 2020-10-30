class AddpictureToPersonas < ActiveRecord::Migration[6.0]
  def change
    add_column :personas, :picture, :string
  end
end
