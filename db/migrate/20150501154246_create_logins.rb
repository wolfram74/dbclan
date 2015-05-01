class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.string :pass
      t.boolean :available, default: true 
      t.timestamps
    end
  end
end
