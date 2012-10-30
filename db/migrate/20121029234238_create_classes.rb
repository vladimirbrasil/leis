class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :content

      t.timestamps
    end
    add_index :classes, :content, unique: true
  end
end
