class CreateExhibits < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibits do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
