class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @event.coupon_id = params[:coupon_id]
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_user.id
    if @event.save!
        redirect_to events_path, notice: '投稿に成功しました。'
      else
        render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:setting_count, :prace, :content, :event_date, :deadline_date, :coupon_id)
  end

end
