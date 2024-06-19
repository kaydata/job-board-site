class Job < ApplicationRecord
    belongs_to :user
    validates :title, :description, :company, :location, :company_website, presence: true
  end