# MONETARYCOIN

## MERO Distribution
MonetaryCoin@protonmail.com

## HOW MANY TOKENS WILL BE AVAIALABLE?

10% of MonetaryCoinERO Tokens will be distributed according to the schedule described herein. At the conclusion of the distribution, 80% of MonetaryCoinERO Tokens will be available for Proof of Stake forging along with any unclaimed coins.

The MonetaryCoinERO Token distribution will take place in two stages, a 7 day stage, and a 173 day stage over a total of 180 days. The first stage of the distribution will start on June 1st, 2018 at 00:00:01 UTC.

112,800,600,000 (112 billion) ERC-20 compatible MonetaryCoinERO (MERO) Tokens will be distributed according to the schedule below:

    MonetaryCoinERO Tokens                                  Sale Schedule

    1. 844,536,898 (844 million)               June 1st, 2018 00:00:01 UTC–June 7th, 2018 12:59:59 UTC
    
Split evenly into 7 consecutive 23 hour periods of 120,648,128 MonetaryCoinERO Tokens each.

    2. 10,436,063,102 (10.4 billion)          June 8th, 2018 00:00:01 UTC–November 28th, 2018 12:59:59 UTC
    
Split evenly into 173 consecutive 23 hour periods of 60,324,064 MonetaryCoinERO Tokens each.

## HOW DOES DISTRIBUTION WORK?
At the end of each 23 hour period referred to above, a set number of MonetaryCoinERO Tokens will be distributed pro-rata amongst all authorized purchasers, based on the total ETH contributed during those periods, respectively, as follows:

MonetaryCoinERO Tokens distributed to the purchaser at the end of the period = a * (b/c)

a = Total ETH contributed by an authorized purchaser during the period.
b = Total number of MonetaryCoinERO Tokens available for distribution in the period.
c = Total ETH contributed by all authorized purchasers during the period.

To participate in the MonetaryCoinERO Token distribution, you will need to send ETH to the Ethereum MonetaryCoinERO distribution smart contract (the “MonetaryCoinERO Distribution Contract”) during a period of your choice. The MonetaryCoinERO Token can only be claimed when such period is completed. The minimum contribution amount is 0.01 ETH.

MonetaryCoinERO Token will automatically be transferred to the Ethereum address used to purchase MonetaryCoinERO Token. MonetaryCoinERO Token can only be claimed after the period pursuant to which you have purchased your MonetaryCoinERO Token has ended.

**The minimum participation amount is 0.01 ETH. If one sends anything other than ETH to the MonetaryCoinERO Token Distribution Contract, such transaction will be null and void.

## CONFIGURATION
In order to make sure ETH are sent and received correctly, the following configuration should be considered:

Browser: Google Chrome
Wallet: Metamask

# CREATE SECTION TO DESCRIBE THE APP

## COMPATIBLE WALLET
Any compatible wallet can be used to participate in the token distribution. One compatible wallet choice may be found at www.metamask.io

To be compatible, a wallet must meet the following criteria:

-Able to export your private key
-Able to call arbitrary contract methods

Please note that you should ensure that whatever wallet you use, the “claim” and “register” methods related to the MonetaryCoinERO Distribution Contract are possible.

## INCOMPATIBLE WALLETS
There are many incompatible wallets, please check to make sure that your wallet meets the compatible wallet criteria before sending any ETH. The following wallets are known to be incompatible wallets; this is not a complete list. any of the following wallets to participate in the MonetaryCoinERO Token distribution.

-Any Bitcoin exchange
-Any Ethereum exchange
-Bitfinex
-Bittrex
-Bitstamp
-Cex.io
-Coinbase
-Exodus
-Jaxx
-Kraken
-Poloniex

## WHERE DO I SEND MY ETHEREUM?
The Ethereum address for the token distribution is:

**XXXXXXXXXXXXXXXXXXXXXXXXXXXXX**

### DO NOT SEND ETH FROM AN EXCHANGE. If you send ETH to MonetaryCoinERO Token Distribution Contract from an exchange account, your MonetaryCoinERO tokens will be allocated to the exchange's ETH account and you may never receive or be able to recover your MonetaryCoinERO tokens.

## TECHNICAL OBSERVATIONS
This MonetaryCoinERO Token Distribution Contract runs on the Ethereum network. Please note the following observations particular to the Ethereum network:

### Block Production occurs at Random Times:
On the Ethereum blockchain, timing of block production is determined by proof of work so block production can occur at random times. For example, ETH sent to the MonetaryCoinERO Token Distribution Contract in the MonetaryCoinERO Token Distribution Interface to require the transfer of ETH to apply to the entire current period or otherwise the transaction will fail.

### Network Congestion:
The Ethereum network is prone to periodic congestion during which transactions can be delayed or lost. Some individuals may intentionally spam the Ethereum network in an attempt to gain an advantage. Do not assume Ethereum block producers will include your transaction when you want or that your transaction will be included at all. This is a limitation of Ethereum and not the MonetaryCoinERO Token Distribution Contract.

### Do not fund Token Distribution Contract from an account you do not control:
Tokens are allocated to the account that sent them. If you send from an exchange or other account that you do not control then you may not be able to claim your MonetaryCoinERO Tokens without their help.

## COMMAND LINE USAGE
It is assumed that participants have an Ethereum blockchain client installed. If you don't have the client installed, Parity would be a potential alternative.

## POTENTIAL CONFIGURATIONS
One would need the Nix Package Manager to work with the MonetaryCoinERO contracts from the command line. These instructions may be applied to attempt to install it, configure it, and then attempt to install a CLI Ethereum helper called Seth:

$ curl https://nixos.org/nix/install | sh
$ nix-channel --add https://nix.dapphub.com/pkgs/dapphub
$ nix-channel --update
$ nix-env -i seth

Example Commands:

Getting Tokens:

$ seth send -F <ETH_ADDRESS> -G 4600000 --value=$(seth --to-wei <CONTRIBUTION> ETH) <CONTRACT_ADDRESS>
"commit()"

Claiming Tokens:

$ seth send -F <ETH_ADDRESS> -G 4600000 <CONTRACT_ADDRESS> "withdrawAll()" <ETH_ADDRESS>

## DISCLAIMER
NO U.S. OR CHINESE PURCHASERS - MONETARYCOINERO TOKENS ARE NOT BEING OFFERED OR DISTRIBUTED TO U.S. PERSONS OR CHINESE PERSONS.
THE FINANCIAL AND LEGAL RISKS RELATED TO ACQUISITION, POSSEESION AND DISPOSITION OF CRYPTOCURRENCY SUCH AS MONETARYCOINERO ARE LARGELY UNKNOWN TODAY.

CRYPTOCURRENCIES SUCH AS MONETARYCOINERO MAY NOT BE SUITABLE FOR INDIVIDUALS NOT OTHERWISE ABLE TO WITHSTAND SIGNIFICANT VOLATILITY AND RISK OF TOTAL, IMMEDIATE AND UNRECOVERABLE LOSS.

CONSULT YOUR TAX, FINANCIAL AND LEGAL ADVISORS TO ASSES YOUR SUITABILITY BEFORE ENGAGING IN THIS OR ANY CRYPTOCURRENCY RELATED TRANSACTION. NOTHING IN THIS DOCUMENT SHALL BE DEEMED TO CREATE A FIDUCIARY RELATIONSHIP BETWEEN OR AMONG ANY PARTIES INTERACTING IN CONNECTION WITH IT.

MONETARYCOIN US TOKENS ARE SO-CALLED, ERC-20 COMPATIBLE TOKENS, ON THE ETHEREUM BLOCKCHAIN. MONETARYCOINERO TOKENS DO NOT HAVE ANY GUARANTEED RIGHTS, USES, PURPOSE, ATTRIBUTES, FUNCTIONALITIES OR FEATURES, EXPRESS OR IMPLIED.

PARTICIPATION IN THIS DISTRIBUTION REQUIRES SIGNIFICANT EXPERTISE IN COMPUTER SCIENCE, AN UNDERSTANDING OF THE ETHEREUM BLOCKCHAIN, AND OF CRYPTOCURENCY IN GENERAL. PLEASE CONSULT WITH A QUALIFIED TECHNOLOGICAL EXPERT BEFORE ACTING.

PURCHASE OF MONETARYCOINERO TOKENS ARE NON-REFUNDABLE AND PURCHASES CANNOT BE CANCELLED.

MONETARYCOINERO TOKENS MAY HAVE NO VALUE. YOU MAY LOSE ALL AMOUNTS PAID.

THERE IS NO REPRESENTATION, WARRANTY OR GUARANTEE THAT THE PROCESS OF PURCHASING MONETARYCOINERO TOKENS OR RECEIVING MONETARYCOINERO TOKENS WILL BE UNINTERRUPTED OR ERROR-FREE OR THAT THE MONETARYCOINERO TOKENS ARE RELIABLE AND ERROR FREE.

THERE IS NO REPRESENTATION, WARRANTY OR GUARANTEE THAT THE SAMPLE COMPUTER CODE PROVIDED HEREIN WILL FUNCTION AS INTENDED OR IS OTHERWISE RELIABLE AND ERROR FREE.

PLEASE READ THE ENTIRE MONETARYCOIN WHITE PAPER AND THE MONETARYCOINERO TOKEN DISTRIBUTION SCHEDULE, RESPECTIVELY, IN THEIR ENTIRETY, PRIOR TO SENDING ETH AND PURCHASING MONETARYCOINERO TOKENS.

MonetaryCoin@protonmail.com

©2018 BY MONETARYCOIN.ORG
