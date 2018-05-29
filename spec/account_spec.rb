require_relative '../lib/account/'
describe Account do
  it 'returns my balance' do
  expect(subject.balance).to eq 1000
  end

end
