class ActionitemMailer < ApplicationMailer
  default from: "actionitems@gateway.com"

  def actionitem_email(actionitem)
    @actionitem = actionitem
    mail(to: @actionitem.notification, subject: 'Action Item')
  end
end

