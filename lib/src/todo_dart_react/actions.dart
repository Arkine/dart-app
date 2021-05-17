part of 'components.dart';

class TodoActions {
  final Action<Todo> addTodo = Action<Todo>();
  final Action<Todo> deleteTodo = Action<Todo>();
  final Action<Todo> toggleCompleteTodo = Action<Todo>();
  final Action<Null> clearTodoList = Action<Null>();
  final Action<Null> clearCompletedTodos = Action<Null>();
}
