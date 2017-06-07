class BankAccount
    attr_reader :interest_rate
    def initialize
        @account_number = 0
        @checking_account = 0
        @savings_account = 0
        @interest_rate = 0.01
    end
    private
        def generate_account_number
            @account_number =  Random.new_seed
        end

    def account_number
        puts @account_number
    end
    def checkings_balance
        puts @checking_account
    end
    def savings_balance
        puts @savings_account
    end
    def deposit_checking(*value)
        @checking_account += value.flatten.reduce(:+)
    end
    def deposit_savings(*value)
        @savings_account += value.flatten.reduce(:+)
    end
    def withdraw_checking(*value)
        @checking_account -= value.flatten.reduce(:-)
    end
    def withdraw_savings(*value)
        @savings_account -= value.flatten.reduce(:-)
    end
    def total_account_balance
        puts @checking_account + @savings_account
    end
end
