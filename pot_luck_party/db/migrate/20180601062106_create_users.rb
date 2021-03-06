class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :fname
      t.string :lname
      t.string :display_name

      t.timestamps
    end
    add_index :users, :username
  end
end
