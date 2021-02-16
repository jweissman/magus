class CreateStreams < ActiveRecord::Migration[6.1]
  def change
    create_table :streams do |t|
      t.string :name, limit: 15
      t.string :about, limit: 48
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
