// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CrowdfundingPlatform {
    struct Project {
        address creator;
        uint256 goal;
        uint256 deadline;
        uint256 amountRaised;
        mapping(address => uint256) contributions;
        bool isFunded;
        bool isClosed;
    }

    mapping(uint256 => Project) public projects;
    uint256 public projectCount;

    event ProjectCreated(uint256 projectId, address creator, uint256 goal, uint256 deadline);
    event ContributionMade(uint256 projectId, address contributor, uint256 amount);
    event ProjectFunded(uint256 projectId, uint256 amountRaised);
    event ProjectClosed(uint256 projectId, uint256 amountRaised);


Project storage project = projects[projectId];

        creator = project.creator;
        goal = project.goal;
        deadline = project.deadline;
        amountRaised = project.amountRaised;
        isFunded = project.isFunded;
        isClosed = project.isClosed;
    }
}
