class AddPropaganda < ActiveRecord::Migration[5.0]
  def change
    create_table :propagandas do |t|
      t.string :titulo
      t.string :cuerpo
      t.string :url
      t.timestamps
    end
  end
end
