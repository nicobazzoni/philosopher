class CreatePhilosophers < ActiveRecord::Migration[6.1]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :idea
      t.string :book
      t.string :image
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
