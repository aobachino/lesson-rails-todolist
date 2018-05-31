class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    def up
      change_column :users, :name, :string, null: false, default: ""
    end

    def down
      change_column :users, :name, :string, null: false
    end
  end
end
