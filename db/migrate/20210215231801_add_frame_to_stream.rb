class AddFrameToStream < ActiveRecord::Migration[6.1]
  def change
    add_reference :streams, :frame, null: false, foreign_key: true
  end
end
