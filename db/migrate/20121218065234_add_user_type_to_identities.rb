class AddUserTypeToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :user_type, :string
  end
end
