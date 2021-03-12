import 'package:flutter/material.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Todo List', home: new TodoList());
  }
}

class Todo {
  int id;
  String title;
  DateTime date;

  Todo({this.id, this.title, this.date});
}

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  List<Todo> _todoList = [];

  void _addTodoItem(Todo task) {
    if (task.title != null) {
      setState(() {
        _todoList.add(task);
        _todoList.sort((a, b) => b.date.compareTo(a.date));
      });
    }
  }

  void _editTodoItem(Todo task, int index) {
    if (task.title != null) {
      setState(() {
        _todoList.removeAt(index);
        _todoList.add(task);
        _todoList.sort((a, b) => b.date.compareTo(a.date));
      });
    }
  }

  void _removeTodoItem(int index) {
    setState(() => _todoList.removeAt(index));
  }

  // Build the whole list of todo items
  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if (index < _todoList.length) {
          return _buildTodoItem(_todoList[index], index);
        }
      },
    );
  }

  // Build a single todo item
  Widget _buildTodoItem(Todo todoText, int index) {
    return new ListTile(
      title: new Text(todoText.title),
      subtitle: new Text(todoText.date.toString().substring(0, 19)),
      trailing: PopupMenuButton(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              child: Text("Edit"),
              value: 'edit',
            ),
            PopupMenuItem(
              child: Text("Delete"),
              value: 'delete',
            )
          ];
        },
        onSelected: (value) {
          switch (value) {
            case "edit":
              {
                pushAddTodoScreen(todoText, 'Edit todo', index);
              }
              break;
            case "delete":
              {
                _removeTodoItem(index);
              }
              break;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Todo List App')),
      body: _buildTodoList(),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => pushAddTodoScreen(Todo(title: ''), 'Add Todo', 0),
          tooltip: 'Add task',
          child: new Icon(Icons.add)),
    );
  }

  pushAddTodoScreen(Todo todo, String title, int index) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      TextEditingController _todoController =
          TextEditingController(text: todo.title ?? '');
      return new Scaffold(
          appBar: new AppBar(title: new Text(title ?? 'Add a new task')),
          body: new TextField(
            autofocus: true,
            controller: _todoController,
            onSubmitted: (val) {
              if (index != 0)
                _editTodoItem(Todo(date: DateTime.now(), title: val), index);
              else
                _addTodoItem(Todo(date: DateTime.now(), title: val));
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: new InputDecoration(
                hintText: 'Enter something to do...',
                contentPadding: const EdgeInsets.all(16.0)),
          ));
    }));
  }
}
