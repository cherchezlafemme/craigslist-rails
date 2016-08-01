class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :admin_rights

      t.index(:username,  unique: true)
      t.index(:email,  unique: true)

      t.timestamps
    end
  end
end
