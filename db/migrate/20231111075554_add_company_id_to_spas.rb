class AddCompanyIdToSpas < ActiveRecord::Migration[7.0]
  def change
    add_column :spas, :company_id, :integer
  end
end
