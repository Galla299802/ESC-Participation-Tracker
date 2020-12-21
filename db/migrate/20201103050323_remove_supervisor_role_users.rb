class RemoveSupervisorRoleUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :supervisor_role
  end
end
