class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :theme
      t.string :img_url
      t.references :doc

      t.timestamps
    end
  end
end
