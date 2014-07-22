class Users < ActiveRecord::Migration
  def up
    create_table :messages do |t|
      t.string :users
      t.string :messages

    end
  end

  def down
    drop_table :messages
  end
end
