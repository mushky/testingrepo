class ActionitemMailer < ApplicationMailer
  default from: "actionitems@iatgateway.com"

  def actionitem_email(actionitem)
    @actionitem = actionitem
    mail(to: @actionitem.notification, subject: 'Action Item')
  end
end

