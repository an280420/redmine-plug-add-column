class AddExtIdToIssues < ActiveRecord::Migration[5.2]
  def change
    add_column :issues, :ext_id, :integer
  end
end
