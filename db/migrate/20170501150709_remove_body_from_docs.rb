class RemoveBodyFromDocs < ActiveRecord::Migration[5.0]
  def change
    remove_column :docs, :body 
  end
end
