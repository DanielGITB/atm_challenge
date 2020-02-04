class Atm
    attr_accessor :funds
    
    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        @funds -= amount
    end
    def withdraw(amount, account)
        case
        when amount >account.balance
            
        else
            @funds -= amount
            { status: true, message: 'success', date: Date.today, amount: amount}
            
        end

        
        
    end


end