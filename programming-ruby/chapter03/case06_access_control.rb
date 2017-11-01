# Access control:
class Accounts

  attr_reader :cleared_balance

    # When an object want to access another object's inner states which belongs to the same class, use 'protected':
  protected :cleared_balance
    
    def greater_balance_than(other)
      return @cleared_balance > other.cleared_balance
    end

    def initialize(checking, savings)
      @cheking = checking
      @savings = savings
    end

  private
    def debit(account, amount)
      account.balance -= amount
    end

    def credit(accont, amount)

    end

  public
    def transfer_to_savings(amount)
      debit(@checking, amount)
      credit(@savings, amount)
    end

end
