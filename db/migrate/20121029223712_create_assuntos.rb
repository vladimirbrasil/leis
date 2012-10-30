class CreateAssuntos < ActiveRecord::Migration
  def change
    create_table :assuntos do |t|
      t.string :content

      t.timestamps
    end
    add_index :assuntos, :content, unique: true
  end
end
