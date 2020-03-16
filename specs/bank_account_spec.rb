require('minitest/autorun')
require('minitest/reporters')

require_relative('../bank_account.rb')
class TestBankAccount < MiniTest::Test

    def test_account_creation
        colins_bank_account = BankAccount.new("colin",100,"personal")
            #overwrites holder name to david
            #colins_bank_account.holder_name = "David"
            assert_equal("colin",colins_bank_account.holder_name)
    end

    def test_can_get_balance
        jacks_account = BankAccount.new("Jack",20000,"personal")
        assert_equal(20000,jacks_account.balance)
    end

#TODO task: write a test to test the account_type getter
#TODO task: write the account_type getter method
    def test_can_get_account_type
        tonys_account = BankAccount.new("Tony",10,"business")
        assert_equal("business",tonys_account.type)
    end

    def test_can_set_holder_name
        #Given (arrange)
        #given i have an account with the name "Callum"
        callum_account = BankAccount.new("Callum",40000,"personal")
        #when (act)
        #when i set the account name to "colin"
        callum_account.holder_name = "colin"
        #Then (assert)
        #then the account name should be colin.
        assert_equal("colin",callum_account.holder_name)
    end

    def test_set_balance
        jimmy_account = BankAccount.new("jimmy", 10,"personal")
        jimmy_account.balance = 100
        assert_equal(100,jimmy_account.balance)
    end
    def test_set_account_type
        jack_account = BankAccount.new("jack",1234,"business")
        jack_account.type = "personal"
        assert_equal("personal",jack_account.type)
    end

    def test_can_pay_in
        robert_account = BankAccount.new("robert",100,"personal")
        robert_account.pay_in(150)
        assert_equal(250,robert_account.balance)
    end
    #test where account is perosnal type
    def test_pay_monthly_fee_if_personal_account
        anita_account = BankAccount.new("anita",125,"personal")
        anita_account.pay_monthly_fee
        assert_equal(115,anita_account.balance)
    end
    #test where account is business type
    def test_pay_monthly_fee_if_business_account
        agnes_account = BankAccount.new("Agnes",5000,"business")
        agnes_account.pay_monthly_fee
        assert_equal(4950,agnes_account.balance)
    end
end
