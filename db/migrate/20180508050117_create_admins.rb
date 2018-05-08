class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :subject
      t.string :classes
      t.string :username
      t.string :password 
      t.timestamps
    end
  end
end
