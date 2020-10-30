class CreatePersonas < ActiveRecord::Migration[6.0]
  def change
    create_table :personas do |t|
      t.string :name
      t.string :karma
      t.string :media
      t.string :appearance

      t.timestamps
    end
  end
end
