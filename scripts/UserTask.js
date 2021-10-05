const userContract = await ethers.getContractFactory("User");

await userContract.latestRoundData().then((data) => {
    console.log('Price is: ', BigInt(data["answer"]).toString())
})