require "pry"
class Transfer
  # your code here
  attr_accessor :amount, :sender, :receiver, :status, :last_transaction

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid? && @last_transaction != @amount && sender.balance > @amount
      return true
    else
      return false
    end
  end

  def execute_transaction
    if valid?
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
      @last_transaction = @amount
    else
      @status = "rejected"
    end
  end
end
