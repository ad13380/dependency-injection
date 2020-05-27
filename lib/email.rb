class EmailClient
  def message(message = Message.new)
    @message = message
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHello
  def run
    email = EmailClient.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end