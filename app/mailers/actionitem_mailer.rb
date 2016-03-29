class ActionitemMailer < ApplicationMailer
  default from: "ex.gateway@iaccesstech.com"

  def actionitem_email(actionitem)
    @actionitem = actionitem
    mail(to: @actionitem.notification, subject: 'Action Item')
  end
end

