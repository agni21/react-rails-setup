class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name

      t.timestamps
    end
    add_index :users, :user_name, unique: true
  end
end
