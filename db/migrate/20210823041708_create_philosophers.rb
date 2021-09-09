class CreatePhilosophers < ActiveRecord::Migration[6.1]
  def change
    create_table :philosophers do |t|
      t.string :name
      t.string :image
      t.string :status
      t.boolean :favorite, default: false
      t.text :notes,  default: ""
      

      t.timestamps
    end
  end
end
