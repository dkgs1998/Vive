class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :token
      t.string :name
      t.integer :coins
      t.timestamps null: false
    end
  end
end
