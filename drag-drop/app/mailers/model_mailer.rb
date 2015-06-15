class ModelMailer < ActionMailer::Base
  default from: "wert900707@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
def new_record_notification(media)
  @media = media
  mail to: "rmadejowicz@tlen.pl", subject: "Success! You did it."
end
end
