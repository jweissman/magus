class AddStreamToMessage < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :stream, null: false, foreign_key: true
  end
end
