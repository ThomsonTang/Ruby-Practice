class Account
    attr_reader :balance
    attr_reader :cleared_balance
    protected :cleared_balace

    def initialize(balance, cleared_balace)
        @balance = balance
        @cleared_balace = cleared_balace
    end

    def greater_balance_than(other)
        return @cleared_balace > other.cleared_balace
    end
end

class Transaction
    def initialize(account_a, account_b)
        @account_a = account_a
        @account_b = account_b
    end

    private
    def debit(account, amount)
        account.balance += account
    end

    def credit(account, amount)
        account.balance += amount
    end

    public
    def transfer(amount)
        debit(@account_a, amount)
        credit(@account_b, amount)
    end
end

savings = Account.new(100)
checking = Account.new(200)
trans = Transaction.new(checking, savings)
trans.transfer(50)
