class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 30
      t.string :about, limit: 120

      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
