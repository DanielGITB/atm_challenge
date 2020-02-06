class Account
    
    attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner
    
    STANDARD_VALIDITY_YRS = 5

    def initialize(attrs ={})
        @pin_code = rand(1000..9999)
        @exp_date = set_expire_date?()
        @account_status = :active
    end


    def set_expire_date?
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y') #capital 'Y' in time gets 4 digits while 'y' gives 2 digits
    end #only having 'STANDARD_VALIDITY_YRS' in the argument works fine aswell


    def self.deactivate(account)
        account.account_status = :deactivated
    end

    def deactivate
        @account_status = :deactivated
    end

end