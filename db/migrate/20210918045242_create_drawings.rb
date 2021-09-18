class CreateDrawings < ActiveRecord::Migration[6.1]
  def change
    create_table :drawings do |t|
      t.string :sketch

      t.timestamps
    end
  end
end
