class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def confirmation_email(user, order)
      @user = user
      @order = order
      mail(to: user.email, subject: 'You bought something')
    end
  end