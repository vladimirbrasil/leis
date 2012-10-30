class CreateAtts < ActiveRecord::Migration
  def change
    create_table :atts do |t|
      t.text :area
      t.string :v1
      t.string :v2
      t.string :v3
      t.string :v4
      t.string :v5
      t.string :v6
      t.string :v7
      t.string :v8
      t.string :v9
      t.boolean :apf
      t.boolean :epf
      t.boolean :ppf
      t.boolean :opf
      t.boolean :dpf
      t.boolean :pcf
      t.boolean :clesp
      t.boolean :cl1
      t.boolean :cl2
      t.boolean :cl3

      t.timestamps
    end
    add_index :atts, [:area, :v1, :v2, :v3, :v4, :v5, :v6], unique: true
  end
end
