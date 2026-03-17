enumerating
allTradesDo: block
"trades do:[:trade | block value: trade]."
trades do: [:trade | block value: trade].
portfolios do: [:childPortfolio | childPortfolio allTradesDo: block ] 