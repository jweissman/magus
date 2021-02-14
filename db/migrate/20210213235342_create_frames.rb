class CreateFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :frames do |t|
      t.references :user, null: false, foreign_key: true
      t.string :about, limit: 30

      t.timestamps
    end
  end
end
