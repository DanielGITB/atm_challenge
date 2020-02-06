require './lib/person'
require './lib/atm'

describe Person do
    subject { described_class.new(name: 'Thomas')}

    it 'is expected to have a :name on initialize' do
        expect(subject.name).not_to be nil
    end

    it 'is expected to raise an error if no name is set' do
        expect { described_class.new}.to raise_error 'A name is required' 
    end

    it 'is expected to have a :cash attribute with the value of 0 on initialize' do
        expect(subject.cash).to eq 0
    end

    #it 'expected to have :account attribute' do 
    #    expect(subject.account).to be nil

    describe 'can create an Account' do
        before {subject.create_account}
        it 'of Account class' do
            expect(subject.account).to be_an_instance_of Account
        end
    end

    it 'with himself as an owner' do
        expect(subject.account.owner).to be subject #keep track on this one
    end

    describe 'can manage funds if an account been created' do
        let(:atm) { Atm.new }
        before { subject.create_account }
        it 'can deposit funds' do
            expect(subject.deposit(100)).to be_truthy #?
        end
    end

    describe 'can not manage funds if not account been created' do
        it 'cant deposit funds' do
            expect { subject.deposit(100) }.to raise_error(RuntimeError, 'No account present')
        
        end
    end



end