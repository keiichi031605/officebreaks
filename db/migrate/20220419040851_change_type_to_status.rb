class ChangeTypeToStatus < ActiveRecord::Migration[6.1]
  def change
    rename_column :items, :type, :status
  end
end
