class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def confirmation_email(user, order)

      @user = user
      @order = order
      mail(to: 'hi', subject: "Confirmation #{@order}")
    end
  end

  # mail(to: '@user.email', subject: "Confirmation #{items.order_id}")