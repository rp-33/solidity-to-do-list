const taskContract = artifacts.require("TaskContract");

module.exports = function (deployer) {
  deployer.deploy(taskContract);
};
