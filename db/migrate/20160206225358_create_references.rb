class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.references :literature, index: true, foreign_key: true
      t.references :referencee, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
