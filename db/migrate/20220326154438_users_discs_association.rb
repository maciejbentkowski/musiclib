class UsersDiscsAssociation < ActiveRecord::Migration[6.1]
  def change
    create_table :user_discs do |t|
      t.belongs_to :user, index: true
      t.belongs_to :disc, index: true
      t.timestamps
  end
end
end