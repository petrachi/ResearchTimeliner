class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :investigator, index: true, polymorphic: true
      t.references :relative, index: true, polymorphic: true
      t.string :date
      t.text :description

      t.timestamps null: false
    end
  end
end
