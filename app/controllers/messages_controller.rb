class MessagesController < ApplicationController
  def create
    page = Page.find_by_slug(params[:page_id])       
    message = Message.create(params[:message])
    Notifier.notification(message).deliver
    redirect_to main_app.host_page_path(page)
  end
    
end