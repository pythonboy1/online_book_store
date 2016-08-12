class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "comp_id", :limit => 100
      t.string "first_name", :limit => 100, :null => false
      t.string "last_name", :limit => 100, :null => false
      t.string "email_id", :limit => 100, :null => false
      t.string "password", :limit => 100, :null => false
      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
