part of '../components.dart';

class TodoStore extends Store {
  TodoStore(TodoActions actions) : _actions = actions {
    _todos = [
      Todo('Learn Dart'),
      Todo('Learn React'),
      Todo('????'),
      Todo('Profit!')
    ];

    triggerOnActionV2<Todo>(_actions.addTodo, (todo) => _todos.add(todo));
    triggerOnActionV2<Todo>(_actions.toggleCompleteTodo,
        (todo) => todo.completed = !todo.completed);
    triggerOnActionV2<Todo>(_actions.deleteTodo, (todo) => _todos.remove(todo));
    triggerOnActionV2<Null>(_actions.clearTodoList, (_) => _todos = []);
    triggerOnActionV2<Null>(_actions.clearCompletedTodos,
        (_) => _todos.removeWhere((todo) => todo.completed));
  }

  final TodoActions _actions;

  List<Todo> _todos = [];
  List<Todo> get todos => _todos;
}
