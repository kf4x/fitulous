class RnameExCol < ActiveRecord::Migration
  def up
    rename_column :exercises, :type, :worked
  end

  def down
    rename_column :exercises, :worked, :type
  end
end