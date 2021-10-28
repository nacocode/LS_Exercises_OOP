# Do not make the amount in the wallet accessible to any method that isn't part of the Wallet class.

class Wallet
  include Comparable
  
  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end
  
  def initialize(amount)
    @amount = amount
  end

  protected

  attr_reader :amount
end

pennys_wallet = Wallet.new(465)
bills_wallet = Wallet.new(500)

if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end
