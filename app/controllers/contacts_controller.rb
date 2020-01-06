class ContactsController < ApplicationController

  def index
  end
  

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      flash[:notice] = "お問い合わせを受けました"
      redirect_to root_path
    else
      render :new  
    end
  end




  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
