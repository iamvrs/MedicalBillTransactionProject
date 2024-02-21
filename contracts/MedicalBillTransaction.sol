// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MedicalBillTransaction {
    address public owner;
    address public patient;
    address public healthcareProvider;
    uint256 public billAmount;
    bool public isPaid;

    event BillPaid(address indexed payer, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can execute this");
        _;
    }

    modifier onlyPatient() {
        require(msg.sender == patient, "Only the patient can execute this");
        _;
    }

    modifier onlyHealthcareProvider() {
        require(msg.sender == healthcareProvider, "Only the healthcare provider can execute this");
        _;
    }

    modifier notPaid() {
        require(!isPaid, "Bill has already been paid");
        _;
    }

    modifier validBillAmount(uint256 _billAmount) {
        require(_billAmount > 0, "Bill amount must be greater than zero");
        _;
    }

    modifier validPatient(address _patient) {
        require(_patient != address(0), "Invalid patient address");
        _;
    }

    modifier validHealthcareProvider(address _healthcareProvider) {
        require(_healthcareProvider != address(0), "Invalid healthcare provider address");
        _;
    }

    constructor(address _patient, address _healthcareProvider, uint256 _billAmount) {
        owner = msg.sender;
        patient = _patient;
        healthcareProvider = _healthcareProvider;
        billAmount = _billAmount;
        isPaid = false;
    }

    function setBillAmount(uint256 _billAmount) external onlyOwner validBillAmount(_billAmount) notPaid {
        billAmount = _billAmount;
    }

    function setPatient(address _patient) external onlyOwner validPatient(_patient) notPaid {
        patient = _patient;
    }

    function setHealthcareProvider(address _healthcareProvider) external onlyOwner validHealthcareProvider(_healthcareProvider) notPaid {
        healthcareProvider = _healthcareProvider;
    }

    function payBill() external payable onlyPatient notPaid {
        require(msg.value == billAmount, "Incorrect payment amount");
        isPaid = true;
        emit BillPaid(msg.sender, msg.value);
    }
}
