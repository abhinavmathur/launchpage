class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :type
      t.string :referral_code
      t.integer :count

      t.timestamps null: false
    end
  end
end
