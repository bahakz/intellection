class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :user_id
      t.string :title
      t.string :descr

      t.timestamps
    end

    add_index :courses, [:user_id, :created_at]
  end
end
