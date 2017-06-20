class AddAdminToDocs < ActiveRecord::Migration[5.0]
  def change
    add_column :docs, :admin, :boolean
  end
end
