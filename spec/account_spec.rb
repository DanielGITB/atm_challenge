require './lib/account.rb'
require './lib/atm.rb'
require 'date'


describe Account do
    let(:account) { instance_double('Account', pin_code: '1234', exp_date: '05/20', account_status: :active) }


    it 'check the length of a number' do
        number = rand(1000..9999)
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have an expiry date on intialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp.date).to eq expected_date
    end


end