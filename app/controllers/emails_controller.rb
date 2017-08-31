class EmailsController < ApplicationController
  options = { :address              => "smtp.gmail.com",
              :port                 => 587,
              :domain               => 'gmail.com',
              :user_name            => ENV['EMAIL'],
              :password             => ENV['PASSWORD'],
              :authentication       => 'plain',
              :enable_starttls_auto => true  }

  Mail.defaults do
    delivery_method :smtp, options
  end

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
end
