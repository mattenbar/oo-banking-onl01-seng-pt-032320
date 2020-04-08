require "pry"
class Transfer
  # your code here
  attr_accessor :amount, :sender, :receiver, :status, :last_transaction
  #@@last_transaction = 0

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid?
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
    else
      @status = "rejected"
    end



  end






end
