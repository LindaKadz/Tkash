require_relative '../lib/account/'
describe Account do
  it 'returns my balance' do
  expect(subject.balance).to eq 1000
  end
  it 'returns my withdrawn amount' do
  expect(subject.withdraw(900)).to eq 900
  end
  it 'returns 200 when I withdraw 200' do
  	expect(subject.withdraw(200)).to eq 200
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
end
