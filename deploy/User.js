async function main() {
    const [deployer] = await ethers.getSigners();
    
    console.log("Deploying contracts with the account:", deployer.address);
    console.log("Account balance:", (await deployer.getBalance()).toString());

    const UserContract = await ethers.getContractFactory("User");
    const deployedContract = await UserContract.deploy();
    console.log("Deployed Storage contract address:", deployedContract.address);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });
