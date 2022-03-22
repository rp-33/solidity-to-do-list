// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TaskContract {
    uint256 public counter = 0;
    struct Task{
        uint256 id;
        string title;
        string description;
        bool done;
    }

    mapping(uint256=>Task) public task;

    function createTask(string memory _title,string memory _description) public{
        task[counter] = Task(counter,_title,_description,false);
        counter += 1;
    }

    function editTask(uint256  _counter,string memory _title,string memory _description,bool _done) public{
        task[_counter] = Task(_counter,_title,_description,_done);
    }

    function getTask(uint256 _counter) public view returns(uint256 _id,string memory _title,string memory _description,bool _done){
        _id = task[_counter].id;
        _title = task[_counter].title;
        _description = task[_counter].description;
        _done = task[_counter].done;
    }
    
}