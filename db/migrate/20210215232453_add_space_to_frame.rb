class AddSpaceToFrame < ActiveRecord::Migration[6.1]
  def change
    add_reference :frames, :space, null: false, foreign_key: true
  end
end
