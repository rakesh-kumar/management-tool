class HomeController < ApplicationController
	def index
		
	end
	def add_member_to_team_form
	@teams	=Team.all
	@users =  User.all
	end

	def add_member_to_team
		if params[:member].present?
		User.find(params[:member]).update(team_id: params[:team])
	end
		@teams	=Team.all
	end

	def team_and_members
		@teams	=Team.all
	end
	def assign_project_form
			@teams	=Team.all
           @projects =Project.all
	end

	def assign_project_submit
		ProjectTeam.create(team_id: params[:team], project_id: params[:project])
		@teams	=Team.all
	end

	def assigned_project_to_team
		@teams	=Team.all
	end
end
