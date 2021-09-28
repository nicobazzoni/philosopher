class CreateBranches < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|

      t.timestamps
    end
  end
end
