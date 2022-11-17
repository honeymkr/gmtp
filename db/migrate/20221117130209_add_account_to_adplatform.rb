class AddAccountToAdplatform < ActiveRecord::Migration[7.0]
 
 
  def change
    add_column :ad_platforms, :account_id, :integer
    add_index :ad_platforms, :account_id

  end
end
