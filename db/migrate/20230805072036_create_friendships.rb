class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships, id: :uuid do |t|
      t.references :account, null: false, foreign_key: true, type: :uuid
      t.references :friend, null: false, foreign_key: { to_table: :accounts }, type: :uuid

      t.timestamps
    end
  end
end
