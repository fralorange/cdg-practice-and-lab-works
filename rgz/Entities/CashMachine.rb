class CashMachine
    def initialize (balance)
        @balance = balance
    end

    def deposit (amount)
        raise ArgumentError.new("Amount musn't be negative") if (amount.to_i < 0)
        @balance += amount.to_i
    end

    def withdraw (amount)
        raise ArgumentError.new("Amount must be lower or equal to current balance") if (amount.to_i > @balance)
        raise ArgumentError.new("Amount musn't be negative") if (amount.to_i < 0)
        @balance -= amount.to_i
    end

    def balance ()
        @balance
    end 
end