class AddfkeyToProjects < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :projects, :docs
  end
end
