#Amend the following classes to be testable in isolation, then write the tests for them.

class EmailClient
  def message
    Message.new
  end
end

class Message
  def send(to, body)
    # Imagine I'm sending an email
  end
end

class SayHelloToMyLittleFriend
  def run
    email = EmailClient.new
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
