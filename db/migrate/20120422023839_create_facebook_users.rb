class CreateFacebookUsers < ActiveRecord::Migration
  def up
    create_table :facebook_users do |t|
      t.string :facebook_id
      t.string :credentials
      
      t.string :email
      t.string :nickname
      t.string :given_name
      t.string :family_name
      t.string :location
      
      t.timestamps
    end
  end
  
  def down
    drop_table :facebook_users
  end 
end
