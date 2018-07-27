module Magic::Link
  class MagicLinkMailer < ::Devise::Mailer
    default from: Magic::Link.email_from
    def send_magic_link(email, token)
      @email = email
      @token = token
      mail(to: email, subject: I18n.t('magic-link.mailer.subject'))
    end
  end
end
