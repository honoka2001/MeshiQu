class ParticipatesController < ApplicationController
    def create
        @participate = EventUser.create(event_id: params[:event_id], member_id: current_user.id)
        redirect_back(fallback_location: root_path)
    end
end