# frozen_string_literal: true

class ParticipatesController < ApplicationController
  def create
    @participate = EventUser.create(event_id: params[:event_id], member_id: current_user.id)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @participate = EventUser.find_by(event_id: @event.id, member_id: current_user)
    @participate.destroy
    redirect_back(fallback_location: root_path)
  end
end
