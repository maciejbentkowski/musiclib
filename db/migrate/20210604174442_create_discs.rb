class CreateDiscs < ActiveRecord::Migration[6.1]
  def change
    create_table :discs do |t|
      t.string :disc_name
      

      t.timestamps
    end
  end
end
