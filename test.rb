require 'mondo'
require 'envyable'
require 'awesome_print'

Envyable.load('./.env', 'development')

mondo = Mondo::Client.new(
  token: ENV.fetch('MONDO_TOKEN'),
  account_id: ENV.fetch('MONDO_ACCOUNT_ID'),
)

ap '** Balance'
ap mondo.balance

ap '** Transactions'
ap mondo.transactions

ap '** Cards'
ap mondo.cards
