class CreateVerbos < ActiveRecord::Migration
  def change
    create_table :verbos do |t|
      t.string :content

      t.timestamps
    end
    add_index :verbos, :content, unique: true
  end
end
