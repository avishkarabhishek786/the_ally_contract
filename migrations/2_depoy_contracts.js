const TheAllyToken = artifacts.require("TheAllyToken");
const TheAllyICO = artifacts.require("TheAllyICO");

module.exports = async function (deployer, _network, accounts) {

    const name = "TheAllyToken";
    const symbol = "ALLY";
    const decimals = 18;

    await deployer.deploy(TheAllyToken, name, symbol, decimals);
    const token = await TheAllyToken.deployed();

    const rate = 100;
    const wallet = accounts[1];

    await deployer.deploy(TheAllyICO, rate, wallet, token.address);
    const theAllyICO = await TheAllyICO.deployed();

    const theAllyICOAddr = theAllyICO.address;
    console.log(theAllyICOAddr);

};




// const Token = artifacts.require("Token");
// const EthSwap = artifacts.require("EthSwap");

// module.exports = async function(deployer) {
//   await deployer.deploy(Token);
//   const token = await Token.deployed();

//   await deployer.deploy(EthSwap, token.address);
//   const ethSwap = await EthSwap.deployed();

//   const ethSwapAddr = ethSwap.address;

//   await token.transfer(ethSwapAddr, '1000000000000000000000000');

//   let ethSwapBalance = await token.balanceOf(ethSwapAddr);

//   console.log(ethSwapBalance.toString());

// };