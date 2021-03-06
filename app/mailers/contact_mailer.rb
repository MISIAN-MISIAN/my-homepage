class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_mail.subject
  #
  # def contact_mail
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end


  # def contact_mail(contact)
  #   @contact = contact  
  #   mail to: ENV['MAIL'], subject: "メールのタイトル"
  # end


  def send_mail(contact)
    @contact = contact
    mail to:   ENV['TOMAIL'], subject: '【お問い合わせ】' + @contact.subject
    
  end

end
