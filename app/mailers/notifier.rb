class Notifier < ApplicationMailer

  default from: 'from@example.com'


  def password_reset(user)
    @user = user
    mail(to: "#{user.name} < #{user.email}",
          subject: "Password Rest")
  end

end
