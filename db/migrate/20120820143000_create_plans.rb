class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :title
      t.string :sport
      t.integer :user_id
      t.timestamps
    end
  end
end
