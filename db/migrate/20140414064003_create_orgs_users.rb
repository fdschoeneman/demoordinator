class CreateOrgsUsers < ActiveRecord::Migration
  def change
    create_table :orgs_users do |t|
      t.integer :org_id
      t.integer :user_id

      t.timestamps
    end
  end
end
