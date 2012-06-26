class MessagesController < ApplicationController
  def create
    page = Page.find_by_slug(params[:page_id])       
    message = Message.create(params[:message])
    Notifier.notification(message).deliver
    destination = page.slug == 'contact' ? main_app.host_page_path(page) : '/'
    redirect_to destination, :notice => 'Thanks for your message!'
  end
    
end