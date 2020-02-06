class Account
    
    attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner
    
    STANDARD_VALIDITY_YRS = 5

    def initialize(attrs ={})
        @pin_code = rand(1000..9999)
        @exp_date = set_expire_date()
    end

    

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end



end