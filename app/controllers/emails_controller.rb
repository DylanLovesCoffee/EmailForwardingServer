class EmailsController < ApplicationController
  def create
    email = params[:email]
    subject = params[:subject]
    message = params[:message]
    sender_name = params[:sender]

    Mail.deliver do
      to 'dylan.w.yang@gmail.com'
      from email
      subject subject
      body "The following message was sent to you via DylanLovesCoffee.github.io.\n\nFrom: #{email}\nName: #{sender_name}\nBody:\n#{message}"
    end

  end

# need verifier here

  Mail.defaults do
    delivery_method :smtp, options
  end

end
