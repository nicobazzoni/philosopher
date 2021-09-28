class AddNameToBranches < ActiveRecord::Migration[6.1]
  def change
    add_column :branches, :name, :string
  end
end
