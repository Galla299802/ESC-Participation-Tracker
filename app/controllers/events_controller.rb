class EventsController < ApplicationController

  #def event_params
  #  params.require(:event).permit(:avatar)
  #end

  def create
  end
  def index
    @events = Event.all.sort_by &:Date
    @event_index = true
  end

  def show
    @event=Event.find(params[:id])
    @back_to_event_list = true
  end

  def join
    @event=Event.find(params[:id])
    @user= current_user
    @back_to_event_list = true
  end

  def leave
    @event=Event.find(params[:id])
    @user= current_user
    @back_to_event_list = true
  end

  def new
  end

  
  def update
    @event = Event.find(params[:id])
    if params[:update_form] == "join-form"
        event = Event.find(params[:id])
        user = User.find(current_user.id)
        event.users << User.find(current_user.id)
        user.points = user.points + event.point_value
        user.save
        redirect_to(events_path)
        #SHOULD add error checking here
    elsif params[:update_form] == "leave-form"
        event = Event.find(params[:id])
        user = User.find(current_user.id)
        event.users.delete(User.find(current_user.id))

        if user.points - event.point_value < 0
          user.points = 0
        else
          user.points = user.points - event.point_value
        end
        user.save

        redirect_to(events_path)
        #SHOULD add error checking here
    end

  end

  def delete
  end

  def destroy
  end
  def edit
  end

end
