class AddNameToFrame < ActiveRecord::Migration[6.1]
  def change
    add_column :frames, :name, :string, limit: 24
  end
end
