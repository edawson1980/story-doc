class AddBodyToDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :docs, :body, :string
  end
end
