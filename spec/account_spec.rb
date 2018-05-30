require_relative '../lib/account/'
describe Account do
  it 'returns my balance' do
  expect(subject.balance).to eq 1000
  end  
  it 'reduces my balance' do
  	subject.withdraw(400)
  	expect(subject.balance).to eq 600
  end
  it 'returns amount deposited' do
  	expect(subject.deposit(500)).to eq 500
  end
  it 'returns my new balance' do
  	subject.deposit(500)
  	expect(subject.balance).to eq 1500
  end
  it 'returns insufficient funds' do
    expect(subject.withdraw(2000)).to eq 'You do not have sufficient funds'
  end
  it 'returns current balance' do
    subject.withdraw(2000)
    expect(subject.balance).to eq 1000
  end
  it 'returns detailed transaction message' do
    new_balance = subject.balance - 200
    expected_output= { transactioncode: 'WRXP45P', balance: new_balance , amount: 200 , time: '1447' , status: true }
    expect(subject.withdraw(200)).to eq expected_output
  end
end
