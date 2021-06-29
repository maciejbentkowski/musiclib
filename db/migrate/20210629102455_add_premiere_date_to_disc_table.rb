class AddPremiereDateToDiscTable < ActiveRecord::Migration[6.1]
  def change
    add_column :discs, :premiere_date, :datetime
  end
end
