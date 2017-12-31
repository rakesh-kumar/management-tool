class Project < ApplicationRecord
	mount_uploader :document, DocumentUploader
    has_many :tasks
    belongs_to :technology
    belongs_to :client
    belongs_to :project_type
    has_many :project_teams
    has_many :teams, through: :project_teams

    has_many :user_projects
    has_many :users, through: :user_projects 
end
