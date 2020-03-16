class BankAccount

    #allows access of the variales, warning it will conflict with functions if they share the same name
    #attr_accessor :holder_name, :balance, :type

    #allows for writing only
    attr_writer :holder_name, :balance, :type

    #allows for reading only
    attr_reader :holder_name, :balance, :type

#properties of class
#every class must have this method which allows us to give
# every "instance" of that class with different data
    def initialize(input_holder_name, input_balance, input_type)
        @holder_name = input_holder_name
        @balance = input_balance
        @type = input_type

    end
    #methods of class
    #"getter" and "setter" methods allow us to modify and read
    #the instance variables of an object of a particular class
    def holder_name
        return @holder_name
    end

    def balance
        return @balance
    end

    def account_type
        return @type
    end

    def pay_in(amount)
        @balance += amount
    end

    def pay_monthly_fee
        #if it's a personal account, fee is 10
        if @type == "personal"
            @balance -= 10
        #elsif it's a business account, fee is 50
        elsif @type == "business"
            @balance -= 50
        end


    end

        #uneccessary if u have attr_writer/reader/accessor
    # def set_holder_name(name)
    #     @holder_name = name
    # end
        #uneccessary if u have attr_writer/reader/accessor
    # def set_balance(cash_value)
    #     @balance = cash_value
    # end
        #uneccessary if u have attr_writer/reader/accessor
    # def set_account_type(type)
    #     @type = type
    # end


end
