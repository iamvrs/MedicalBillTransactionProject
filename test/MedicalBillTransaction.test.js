// SPDX-License-Identifier: MIT
const MedicalBillTransaction = artifacts.require("MedicalBillTransaction");

contract("MedicalBillTransaction", (accounts) => {
  it("should deploy and set initial values", async () => {
    const medicalBillInstance = await MedicalBillTransaction.deployed();

    const owner = await medicalBillInstance.owner();
    const patient = await medicalBillInstance.patient();
    const healthcareProvider = await medicalBillInstance.healthcareProvider();
    const billAmount = await medicalBillInstance.billAmount();
    const isPaid = await medicalBillInstance.isPaid();

    assert.equal(owner, accounts[0], "Owner not set correctly");
    assert.equal(patient, /* your patient address here */, "Patient not set correctly");
    assert.equal(healthcareProvider, /* your healthcare provider address here */, "Healthcare provider not set correctly");
    assert.equal(billAmount.toNumber(), /* your initial bill amount here */, "Bill amount not set correctly");
    assert.equal(isPaid, false, "Bill should not be paid initially");
  });

  // Add more test cases as needed
});
