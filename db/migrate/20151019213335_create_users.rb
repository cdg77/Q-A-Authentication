class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :email, :string
      t.column :password_digest, :string

      t.timestamps
    end
    add_index :users, :email
  end
end
