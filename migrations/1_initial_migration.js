// SPDX-License-Identifier: MIT
const MedicalBillTransaction = artifacts.require("MedicalBillTransaction");

module.exports = function (deployer) {
  deployer.deploy(MedicalBillTransaction, /* arguments if any */);
};
