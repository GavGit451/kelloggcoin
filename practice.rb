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

Ben_start_bal = blockchain[0]["amount"]
Brian_start_bal = blockchain[1]["amount"]

Ben_end_bal = Ben_start_bal - blockchain[2]["amount"] - blockchain[5]["amount"] + blockchain[6]["amount"]
Brian_end_bal = Brian_start_bal - blockchain[3]["amount"]
Evan_end_bal = blockchain[2]["amount"] - blockchain[4]["amount"] + blockchain[7]["amount"]
Ant_end_bal = blockchain[3]["amount"] + blockchain[4]["amount"] + blockchain[5]["amount"] - blockchain[6]["amount"] - blockchain[7]["amount"]


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


puts "Ben's KelloggCoin balnce is #{Ben_end_bal}"
puts "Brian's KelloggCoin balnce is #{Brian_end_bal}"
puts "Evan's KelloggCoin balnce is #{Evan_end_bal}"
puts "Anthony's KelloggCoin balnce is #{Ant_end_bal}"

# if blockchain[2]["from_user"] = "ben"
#   puts blockchain[2]["amount"]
# end