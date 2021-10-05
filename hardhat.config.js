require("@nomiclabs/hardhat-ethers");
require('dotenv').config()
/**
* @type import('hardhat/config').HardhatUserConfig
*/
module.exports = {
defaultNetwork: "MoonbaseAlpha",
networks: {
hardhat: {
// // If you want to do some forking, uncomment this
// forking: {
// url: MAINNET_RPC_URL
// }
},
localhost: {
},
MoonbaseAlpha: {
url: process.env.MoonbaseAlpha_RPC,
accounts: [process.env.PRIVATE_KEY],
saveDeployments: true,
}
},
solidity: "0.6.7",
};
