class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :type
      t.integer :plan_id
      t.timestamps
    end
  end
end
