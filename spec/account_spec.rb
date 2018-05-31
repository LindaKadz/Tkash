require_relative '../lib/account/'
describe Account do
  it 'returns my balance' do
  expect(subject.balance).to eq 1000
  end

  it 'reduces my balance' do
  	subject.withdraw(400, 34)
  	expect(subject.balance).to eq 600
  end
  it 'returns amount deposited' do
  	expect(subject.deposit(500)).to eq 500
  end
  it 'returns my new balance' do
  	subject.deposit(500)
  	expect(subject.balance).to eq 1500
  end
  it 'returns current balance' do
    subject.withdraw(2000, 381)
    expect(subject.balance).to eq 1000
  end
  it 'returns detailed transaction message' do
    new_balance = subject.balance - 200
    expected_output= { transactioncode: 'WRXP45P', balance: new_balance , amount: 200 , time: '1447' , status: true }
    expect(subject.withdraw(200, 7)).to eq expected_output
  end
  it 'returns failure message for excess amount' do
    new_balance = subject.balance
    expected_output= {balance: new_balance , time: '1538' , status: false}
  expect(subject.withdraw(3000,98)).to eq expected_output
  end
  it 'returns fail message for wrong agent number' do
  expect(subject.withdraw(200, 89)).to eq 'Failed, wrong agent number'
  end
end
