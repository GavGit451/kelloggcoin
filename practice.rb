# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Ben_start_bal = blockchain[0]["amount"]
# Brian_start_bal = blockchain[1]["amount"]

# ben_end_bal = Ben_start_bal - blockchain[2]["amount"] - blockchain[5]["amount"] + blockchain[6]["amount"]
# brian_end_bal = Brian_start_bal - blockchain[3]["amount"]
# evan_end_bal = blockchain[2]["amount"] - blockchain[4]["amount"] + blockchain[7]["amount"]
# ant_end_bal = blockchain[3]["amount"] + blockchain[4]["amount"] + blockchain[5]["amount"] - blockchain[6]["amount"] - blockchain[7]["amount"]

# 1. # default 0 balance - for everyone

ben_end_bal = 0
brian_end_bal = 0
evan_end_bal  = 0
ant_end_bal = 0

# 2. loop through each blockchain transaction

for transaction in blockchain
#  puts "#{transaction}"

  if transaction["from_user"]=="ben"
    ben_end_bal = ben_end_bal - transaction["amount"]

  elsif transaction["from_user"]=="brian"
    brian_end_bal = brian_end_bal - transaction["amount"]

  elsif transaction["from_user"]=="evan"
    evan_end_bal = evan_end_bal - transaction["amount"]

  elsif transaction["from_user"]=="anthony"
    ant_end_bal = ant_end_bal - transaction["amount"]

  end

  if transaction["to_user"]=="ben"
    ben_end_bal = ben_end_bal + transaction["amount"]

  elsif transaction["to_user"]=="brian"
    brian_end_bal = brian_end_bal + transaction["amount"]

  elsif transaction["to_user"]=="evan"
    evan_end_bal = evan_end_bal + transaction["amount"]

  elsif transaction["to_user"]=="anthony"
    ant_end_bal = ant_end_bal + transaction["amount"]

  end

end

# 3. in the loop, if from someone(x) remove from balance

# 4. in the loop, if TO someone add to balance

# 5. move from money, to money, and display end balances

# from = blockchain[3]["from_user"]
# puts from

# to = blockchain[3]["to_user"]
# puts to

# amount = blockchain[3]["amount"]
# puts amount


# puts blockchain[3]["from_user"]
# puts blockchain[3]["to_user"]
# puts blockchain[3]["amount"]


# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇


puts "Ben's KelloggCoin balnce is #{ben_end_bal}"
puts "Brian's KelloggCoin balnce is #{brian_end_bal}"
puts "Evan's KelloggCoin balnce is #{evan_end_bal}"
puts "Anthony's KelloggCoin balnce is #{ant_end_bal}"

balances = [ben_end_bal, brian_end_bal, evan_end_bal, ant_end_bal]
for balance in balances
  puts "KelloggCoin balance is #{balance}"
end

# if blockchain[2]["from_user"] = "ben"
#   puts blockchain[2]["amount"]
# end