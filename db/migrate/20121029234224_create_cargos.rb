class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :content

      t.timestamps
    end
    add_index :cargos, :content, unique: true
  end
end
