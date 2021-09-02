class CreatePhilosophers < ActiveRecord::Migration[6.1]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :idea
      t.string :image
      t.integer :likes
      t.string :notes
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end
