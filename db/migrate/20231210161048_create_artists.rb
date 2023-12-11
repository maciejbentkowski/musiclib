class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :alias
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.datetime :death_date

      t.timestamps
    end
  end
end
