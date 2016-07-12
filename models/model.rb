require 'twilio-ruby'
def sendquestion(question, recipient='+16155006030')
  # put your own credentials here
  account_sid = 'ACfa15553488994f8c33440d900775354b'
  auth_token = 'e6b79984ed93b4c74c649795fa690431'

  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.account.messages.create(
    from: '+19314420983',
    to: recipient,
    body: question
  )
end
