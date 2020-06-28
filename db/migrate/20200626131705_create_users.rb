class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :full_name
      t.string  :email
      t.boolean :veteran?
      t.boolean :veteran_family?
      t.string  :password_digest
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
