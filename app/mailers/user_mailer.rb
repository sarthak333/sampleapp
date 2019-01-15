class UserMailer < ApplicationMailer
default from: 'hello@sarthakjha.com'

  def account_activation(user)
    @user = user
    mail(
   :subject => 'Hello from Postmark',
   :to  => user.email,
   :from => 'hello@sarthakjha.com',
   :html_body => 'HTML body goes here',
   :track_opens => 'true')
  end

  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
