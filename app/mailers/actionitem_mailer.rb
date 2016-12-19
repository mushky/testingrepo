class ActionitemMailer < ApplicationMailer
  default from: "ali.zaidi@iaccesstech.com"

  def actionitem_email(actionitem)
    @actionitem = actionitem
    mail(to: @actionitem.notification, subject: 'Action Item')
  end
end

