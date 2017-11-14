class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.column :order, :integer
      t.column :day, :string
      t.column :title, :string
      t.column :text, :string
      
      t.timestamps
    end
  end
end
