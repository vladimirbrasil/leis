class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.text :content

      t.timestamps
    end
    add_index :areas, :content, unique: true
  end
end
