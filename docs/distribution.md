# MONETARYCOIN DISTRIBUTION

## MonetaryCoinERO (MERO) and MonetaryCoinCHI (MCHI)

### HOW MANY MERO TOKENS WILL BE AVAIALABLE?

10% of MonetaryCoinERO Tokens will be distributed according to the schedule described herein. At the conclusion of the distribution, 90% of MonetaryCoinERO Tokens, less any coins forged during the distrIbution of the initial 10%, will be available for Proof of Stake forging along with any unclaimed coins.

The MonetaryCoinERO Token distribution will take place in two stages, a 7 day window, and a 173 window over a total of 180 windows. The first stage of the distribution will start on July 10th, 2018 at 00:00:01 UTC.

112,800,600,000 (112 billion) ERC-20 compatible MonetaryCoinERO (MERO) Tokens will be distributed according to the schedule below:

    MonetaryCoinERO Tokens                                  Distribution Schedule

    1.    844,536,898 (844 million)               July 10th, 2018 00:00:01 UTC–July 17th, 2018 12:59:59 UTC
    
Split evenly into 7 consecutive 23 hour periods of 120,648,128 MonetaryCoinERO Tokens each.

    2. 10,436,063,102 (10.4 billion)              July 18th, 2018 00:00:01 UTC–December 30th, 2018 12:59:59 UTC
    
Split evenly into 173 consecutive 23 hour periods of 60,324,064 MonetaryCoinERO Tokens each.

## HOW MANY MCHI TOKENS WILL BE AVAIALABLE?

10% of MonetaryCoinCHI Tokens will be distributed according to the schedule described herein. At the conclusion of the distribution, 90% of MonetaryCoinCHI Tokens, less any coins forged during the distribution of the initial 10%, will be available for Proof of Stake forging along with any unclaimed coins.

The MonetaryCoinCHI Token distribution will take place in two stages, a 7 window stage, and a 173 window stage over a total of 180 windows. The first stage of the distribution will start on July 10th, 2018 at 00:00:01 UTC.

173,985,950,000,000 (173,986 billion) ERC-20 compatible MonetaryCoinERO (MCHI) Tokens will be distributed according to the schedule below:

    MonetaryCoinCHI Tokens                                  Distribution Schedule

    1.  13,025,686,096 (13.0 billion)              July 10th, 2018 00:00:01 UTC–July 17th, 2018 12:59:59 UTC
    
Split evenly into 7 consecutive 23 hour periods of 1,860,812,299 MonetaryCoinCHI (MCHI) Tokens each.

    2. 160,960,263,904 (160.9 billion)             July 18th, 2018 00:00:01 UTC–December 30th, 2018 12:59:59 UTC
    
Split evenly into 173 consecutive 23 hour periods of 930,406,150 MonetaryCoinCHI (MCHI) Tokens each.

## HOW DOES THE DISTRIBUTION WORK?
At the end of each 23 hour period referred to above, a set number of MonetaryCoin Tokens will be distributed pro-rata amongst all authorized participants, based on the total ETH contributed during those periods, respectively, as follows:

MonetaryCoin Tokens distributed to the participant at the end of the period = a * (b/c)

* a = Total ETH contributed by an authorized participant during the period.
* b = Total number of MonetaryCoin Tokens available for distribution in the period.
* c = Total ETH contributed by all authorized participants during the period.

To participate in the MonetaryCoin Token distribution, you will need to send ETH to the Ethereum MonetaryCoin distribution smart contract (the “MonetaryCoin Distribution Contract”) during a period of your choice using the DApp (see below). The MonetaryCoin Token can only be claimed when such period is completed. The minimum contribution amount is 0.01 ETH.

After a participant uses the DApp to request a withdrawal of tokens, MonetaryCoin Tokens are expected to be automatically transferred to the Ethereum Metamask address from which ETH was sent as part of the MonetaryCoin Token distribution. MonetaryCoin Token can only be claimed after the window pursuant to which you have participated has ended.

#### The minimum participation amount is 0.01 ETH. If one sends anything other than ETH to the MonetaryCoinCHI Token Distribution Contract, such transaction will be null and void.

## CONFIGURATION
In order to make sure ETH are sent and received correctly, the following configuration should be considered:

* Browser: Google Chrome / Firefox
* Wallet: Metamask

## DApp usage
To participate in the MonetaryCoin pre-distribution you must use the dedicated Dapp

[HTTPS://MonetaryCoin.io](https://MonetaryCoin.io).

### Participation instructions using Metamask:

* Unlock Metamask and select network: contracts available on Ropsten and Mainnet
* Open https://MonetaryCoin.io
* Commit ETH to one or more open windows using the "commit ETH" button
* Approve the transaction using the metamask popup window
* Wait for the window to close
* Get tokens for a selected window using the "Withdraw tokens" button.
* Approve the transaction using the metamask popup window
* Tokens may be seen under tokens tab in metamsk

## COMPATIBLE WALLET
The required DApp is integrated with www.metamask.io. 

## INCOMPATIBLE WALLETS
There are many incompatible wallets, please be sure to use the DApp and MetaMask.

## WHERE DO I SEND MY ETHEREUM FOR MonetaryCoinERO (MERO)?
Use the DApp at www.monetarycoin.io, as described above.

## WHAT IS THE TOKEN CONTRACT ADDRESS FOR MERO USED BY THE DAPP AND METAMASK?
0x227412a7d92bca453b5e2f790fc8282ca2e1a686

### DO NOT SEND ETH FROM AN EXCHANGE. If you send ETH to the MonetaryCoinERO Token Distribution Contract from an exchange account, your MonetaryCoinERO tokens will be allocated to the exchange's ETH account and you may never receive or be able to recover your MonetaryCoinERO tokens.

## WHERE DO I SEND MY ETHEREUM FOR MonetaryCoinCHI (MCHI)?
Use the DApp at www.monetarycoin.io, as described above.

## WHAT IS THE TOKEN CONTRACT ADDRESS FOR MCHI USED BY THE DAPP AND METAMASK?
0x6644fc3e5224d28ba9172bfaa21359d43bbd4190

### DO NOT SEND ETH FROM AN EXCHANGE. If you send ETH to the MonetaryCoinCHI Token Distribution Contract from an exchange account, your MonetaryCoinCHI tokens will be allocated to the exchange's ETH account and you may never receive or be able to recover your MonetaryCoinCHI tokens.

## TECHNICAL OBSERVATIONS
The MonetaryCoinERO Token Distribution Contract and the MonetaryCoinCHI Token Distribution Contract each run on the Ethereum network. Please note the following observations particular to the Ethereum network:

### Block Production occurs at Random Times:
On the Ethereum blockchain, timing of block production is determined by proof of work so block production can occur at random times. For example, ETH sent to the MonetaryCoinERO Token Distribution Contract in the MonetaryCoinERO Token Distribution Interface should require the transfer of ETH to apply to the entire current period, otherwise the transaction will fail. Likewise, ETH sent to the MonetaryCoinCHI Token Distribution Contract in the MonetaryCoinCHI Token Distribution Interface should require the transfer of ETH to apply to the entire current period, otherwise the transaction will also fail.

### Network Congestion:
The Ethereum network is prone to periodic congestion during which transactions can be delayed or lost. Some individuals may intentionally spam the Ethereum network in an attempt to gain an advantage. Do not assume Ethereum block producers will include your transaction when you want or that your transaction will be included at all. This is a limitation of Ethereum and not the MonetaryCoinERO Token Distribution Contract or the MonetaryCoinCHI Distribution Contract.

### Do not fund Token Distribution Contract from a Metamask wallet you do not control:
Tokens are allocated to the account that sent them. If you send from an exchange or other account that you do not control then you may not be able to claim your MonetaryCoinERO Tokens or MonetaryCoinCHI Tokens without their help.

**IF YOU INTEND TO PARTICIPATE IN BOTH MERO AND MCHI MAKE SURE TO USE THE MENU IN THE UPPER RIGHT HAND CORNER OF THE DAPP TO TOGGLE BETWEEN EACH OFFERING.

## DISCLAIMER
NO US PARTICIPANTS WITHOUT SATISFACTORY PROOF OF ACCREDITED INVESTOR STATUS, NO CHINESE PARTICIPANTS - MONETARYCOIN TOKENS ARE NOT BEING OFFERED OR DISTRIBUTED TO CHINESE PERSONS.

THE FINANCIAL AND LEGAL RISKS RELATED TO ACQUISITION, POSSEESION AND DISPOSITION OF CRYPTOCURRENCY SUCH AS MONETARYCOIN ARE LARGELY UNKNOWN TODAY.

CRYPTOCURRENCIES SUCH AS MONETARYCOIN MAY NOT BE SUITABLE FOR INDIVIDUALS NOT OTHERWISE ABLE TO WITHSTAND SIGNIFICANT VOLATILITY AND RISK OF TOTAL, IMMEDIATE AND UNRECOVERABLE LOSS.

CONSULT YOUR TAX, FINANCIAL AND LEGAL ADVISORS TO ASSES YOUR SUITABILITY BEFORE ENGAGING IN THIS OR ANY CRYPTOCURRENCY RELATED TRANSACTION. NOTHING IN THIS DOCUMENT SHALL BE DEEMED TO CREATE A FIDUCIARY OR COMMON LAW RELATIONSHIP BETWEEN OR AMONG ANY PARTIES INTERACTING IN CONNECTION WITH IT.

MONETARYCOIN TOKENS ARE SO-CALLED, ERC-20 COMPATIBLE TOKENS, ON THE ETHEREUM BLOCKCHAIN. MONETARYCOIN TOKENS DO NOT HAVE ANY GUARANTEED RIGHTS, USES, PURPOSE, ATTRIBUTES, FUNCTIONALITIES OR FEATURES, EXPRESS OR IMPLIED.

PARTICIPATION IN THIS DISTRIBUTION REQUIRES SIGNIFICANT EXPERTISE IN COMPUTER SCIENCE, AN UNDERSTANDING OF THE ETHEREUM BLOCKCHAIN, AND OF CRYPTOCURENCY IN GENERAL. BEFORE ACTING PLEASE CONSULT WITH A QUALIFIED TECHNOLOGICAL EXPERT IN ADDITION TO TAX, FINANCIAL AND LEGAL ADVISORS.

MONETARYCOIN TOKENS ARE NON-REFUNDABLE AND ACQUISITION OF MONETARYCOIN TOKENS CANNOT BE CANCELLED.

MONETARYCOIN TOKENS MAY HAVE NO VALUE. YOU MAY LOSE ALL AMOUNTS TRANSMITTED.

EACH PARTY TO THE SMART CONTRACT ACKNOWLEDGES AND AGREES THAT ANY DISPUTE IS LIKELY TO INVOLVE COMPLICATED AND DIFFICULTY ISSUES, AND THEREFORE IT KNOWINGLY, VOLUNTARILY, INTENTIONALLY, IRREVOCABLY AND UNCONDITIONALLY WAIVES ANY RIGHT IT MAY HAVE TO A TRIAL BY JURY IN RESPECT OF ANY DISPUTE IN ALL JURISDICTIONS AND FOR ALL TIME.

ALL CLAIMS, OBLIGATIONS, LIABILITIES OR CAUSES OF ACTION (WHETHER IN CONTRACT, COMMON OR STATUTORY LAW, EQUITY OR OTHERWISE) THAT ARISE OUT OF OR RELATE TO THIS TRANSACTION (INCLUDING ANY REPRESENTATION OR WARRANTY MADE IN, IN CONNECTION WITH OR AS AN INDUCEMENT TO THE TRANSACTION), MAY BE MADE ONLY AGAINST THE IMMEDIATE PARTIES TO THE SMART CONTRACT (“SMART CONTRACTING PARTIES”). NO PERSON WHO IS NOT A SMART CONTRACTING PARTY, INCLUDING ANY OFFICER, EMPLOYEE, MEMBER, PARTNER OR MANAGER ACTING ON BEHALF OF ANY SMART CONTRACTING PARTY (“NONPARTY AFFILIATES”) SHALL HAVE ANY LIABILITY (WHETHER IN CONTRACT, TORT, COMMON OR STATUTORY LAW, EQUITY OR OTHERWISE) FOR ANY CLAIMS, OBLIGATIONS, LIABILITIES OR CAUSES OF ACTION ARISING OUT OF OR RELATING IN ANY MATTER TO THIS AGREEMENT OR THE NEGOTIATION, EXECUTION, PERFORMANCE OR BREACH OF THE SMART CONTRACT AND TO THE MAXIMUM EXTENT PERMITTED BY LAW, EACH SMART CONTRACTING PARTY HEREBY WAIVES AND RELEASES ALL SUCH LIABILITIES, CLAIMS, CAUSES OF ACTION AND OBLIGATIONS AGAINST ANY SUCH NONPARTY AFFILIATES IN ALL JURISDICTIONS AND FOR ALL TIME.

THERE IS NO REPRESENTATION, WARRANTY OR GUARANTEE THAT THE PROCESS OF PURCHASING MONETARYCOIN TOKENS OR RECEIVING MONETARYCOIN TOKENS WILL BE UNINTERRUPTED OR ERROR-FREE OR THAT THE MONETARYCOIN TOKENS ARE RELIABLE AND ERROR FREE. WE DO NOT WARRANTY OR GURANTEE THE RELIABLITY OR ERROR FREE OPERATION OF CHROME, METAMASK, NIX PACKAGE MANAGER, AND SETH, RESPECTIVELY.

THERE IS NO REPRESENTATION, WARRANTY OR GUARANTEE THAT THE SAMPLE COMPUTER CODE PROVIDED HEREIN WILL FUNCTION AS INTENDED OR IS OTHERWISE RELIABLE OR ERROR FREE.

PLEASE READ THE ENTIRE MONETARYCOIN WHITE PAPER AND THE MONETARYCOIN TOKEN DISTRIBUTION SCHEDULES, RESPECTIVELY, IN THEIR ENTIRETY, PRIOR TO SENDING ETH IN PURSUIT OF MONETARYCOIN TOKENS.

MONETARYCOIN.ORG
