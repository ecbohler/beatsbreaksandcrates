class WelcomeController < ApplicationController
  def contact
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    @contact.save
    redirect_to root_path
  end

  def index
    @contact = Contact.new
  end
end

