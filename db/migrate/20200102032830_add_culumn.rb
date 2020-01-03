class AddCulumn < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibits, :title, :string
    add_column :exhibits, :image_name, :string
  end
end
