pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    // LIKE AN ASSOCIATE ARRAY
    // KEY => VALUE
    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Learn solidity");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}