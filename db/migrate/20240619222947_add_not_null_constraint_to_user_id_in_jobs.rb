class AddNotNullConstraintToUserIdInJobs < ActiveRecord::Migration[6.1]
  def change
    change_column_null :jobs, :user_id, false
  end
end