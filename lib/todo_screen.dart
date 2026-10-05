import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hm_todo/Logic.dart'; 

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var todoProvider = context.watch<TodoProvider>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  .all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
               SizedBox(height: 50),
               Text(
                "My Todo",
                style: TextStyle(fontSize: 30, fontWeight: .bold),
              ),
               Text(
                "Small steps, big progress",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
               SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoProvider.todoCtr,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: .circular(20),
                        ),
                        hintText: "Add a new todo",
                        hintStyle:  TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  MaterialButton(
                    minWidth: 50,
                    height: 55,
                    onPressed: () {
                      todoProvider.addTodo();
                    },
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(10),
                    ),
                    child:  Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                   Text(
                    "Tasks",
                    style: TextStyle(fontSize: 20, fontWeight: .bold),
                  ),
                  Card(
                    color: Colors.green[100],
                    child: Padding(
                      padding: .all(6.0),
                      child: Text(
                        "${todoProvider.todoList.length} tasks",
                        style:  TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(height: 10),

              ...todoProvider.todoList.asMap().entries.map((entry) {
                int index = entry.key;
                return Padding(
                  padding: .only(bottom: 10),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: .circular(20),
                    ),
                    child: Padding(
                      padding: .all(8),
                      child: Row(
                        children: [
                          Checkbox(
                            value: todoProvider.todoCheck[index],
                            onChanged: (value) {
                              context.read<TodoProvider>().checkTodo(index);
                            },
                          ),
                          Text(todoProvider.todoList[index]),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              context.read<TodoProvider>().removeTodo(index);
                            },
                            child: Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.red[100],
                                borderRadius: .circular(10),
                              ),
                              child:  Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}