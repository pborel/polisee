class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify


  	client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
  	message = client.messages.create from: '4846853929', to: '6107163852', body: '#{@followed_bill} comes to the floor today, remember to contact your Congressperson!'
  	render plain: message.status
  end
end
