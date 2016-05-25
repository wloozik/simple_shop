class UsersMailer < ActionMailer::Base
  default from: 'admin@efremova.herokuapp.com'

  def order(user, order)
    @user = user
    @order = order
    mail(to: user.email, subject: '"Пышечка", заказ!')
  end

   def notify(user, order)
    @user = user
    @order = order
    email_with_name = "wloozig@gmail.com"
    mail(to: email_with_name, subject: 'СРОЧНО, НОВЫЙ ЗАКАЗ!')
  end

end
