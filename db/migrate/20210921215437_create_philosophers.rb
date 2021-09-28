class CreatePhilosophers < ActiveRecord::Migration[6.1]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :image
      t.string :idea
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
