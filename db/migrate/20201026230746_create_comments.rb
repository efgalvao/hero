class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :bode
      t.integer :persona_id

      t.timestamps
    end
  end
end
