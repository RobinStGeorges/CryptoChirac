const voteContract = artifacts.require("voteContract");

module.exports = function(deployer) {
  deployer.deploy(voteContract);
};
