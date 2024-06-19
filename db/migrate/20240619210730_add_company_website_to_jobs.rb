class AddCompanyWebsiteToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :company_website, :string
  end
end
