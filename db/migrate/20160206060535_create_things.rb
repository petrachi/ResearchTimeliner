class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
