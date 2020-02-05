class Account

    def initialize
        pin_code = rand(1000..9999)
    end

    
    STANDARD_VALIDITY_YRS = 5

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')
    end



end