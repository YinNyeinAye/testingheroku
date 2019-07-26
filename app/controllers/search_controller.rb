class SearchController < ApplicationController

    def index
        @workspace = Workspace.page(params[:page])
        @user=User.all
    end

    def search
        if params[:email].nil?
            @workspaces = "null"
        else
            user = User.find_by(email:params[:email])
            @workspace_list=User.all.find_by(id: current_user.id).workspaces
           
        end
    end

    private
	def workspace_params
        params.require(:workspace).permit(:name, :admin)
    
    end
    def userworkspace_params
        params.require(:UsersWorkspace).permit(:workspace_id, :user_id)
    end
end