# Preview all emails at http://localhost:3000/rails/mailers/actionitem_mailer
class ActionitemMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    ActionitemMailer.actionitem_email(Actionitem.third)
  end
end

