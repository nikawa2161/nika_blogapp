class RelationshipMailer < ApplicationMailer
  def new_follower(user, follower)
    @user = user
    @follower = follower
    mail_to: 'user.email', subject: '【お知らせ】フォローされました'
  end

end