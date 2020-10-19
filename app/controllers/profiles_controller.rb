class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @profile = current_user.profile
    end

    def edit
        @profile = current_user.prepare_profile
    end

    def update
        @profile = current_user.prepare_profile
        @profile.assign_attributes(profile_parms)
        if @profile.save
            redirect_to profile_path, notice: 'プロフィール更新！'
        else
            flash.now[:erro] = '更新できませんした'
            render :edit
        end
    end

    private
    def profile_parms
        params.require(:profile).permit(
            :nickname,
            :introduction,
            :gender,
            :birthday,
            :subscrided,
            :avatar
        )

    end
end