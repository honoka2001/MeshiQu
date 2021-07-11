class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_user.id
    if @event.save!
        redirect_to event_path(@event), notice: '投稿に成功しました。'
      else
        render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:setting_count, :prace, :content, :event_date, :deadline_date)
  end

end
