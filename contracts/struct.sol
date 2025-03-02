// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StructExample {
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public  todoList;
    // above todoList is basically a state variable which will be usefull for the 

    function createTodo(string memory _text) public {
        // first method is like push the text
        todoList.push(
            Todo(_text, false)
        );

        // key value mapping
        todoList.push(Todo({
            text: _text, 
            completed: true
        }));

        // initialize epty struct and we can update it too
        Todo memory todo;
        todo.text=_text;
        todo.completed = false;
    }

    // basically solidity automatically creates the getter for the 'todos'
    function get(uint _index) public view returns(string memory text, bool completed){
        Todo storage todo= todoList[_index];
        return (todo.text, todo.completed);
    }

    // update the todoList
    function update(uint _index, string memory _text, bool _completed) public {
         Todo storage todo = todoList[_index];
            todo.text=_text; 
            todo.completed =  _completed;
        todoList[_index] = todo;
    }

    // togglefunction for completing the todo functionality
    function toggleCompletion(uint _index) public {
         Todo storage todo = todoList[_index];
            todo.completed= !todo.completed;
        todoList[_index] = todo;
    }

}