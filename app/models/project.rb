class Project < ApplicationRecord
	mount_uploader :document, DocumentUploader
    has_many :tasks
    has_many :project_teams
     has_many :teams, through: :project_teams
end
