class UpdateModels < ActiveRecord::Migration
  def change
    add_column :exercises, :user_id, :integer
    add_column :foods, :user_id, :integer
  end
end
