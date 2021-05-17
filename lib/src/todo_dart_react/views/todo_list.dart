part of '../components.dart';

typedef AddTodoCallback(Todo todo);
typedef ClearCompletedTodosCallback();
typedef ClearTodoListCallback();
typedef CompleteTodoCallback(Todo todo);
typedef DeleteTodoCallback(Todo todo);

@Factory()
UiFactory<TodoListProps> TodoList = _$TodoList;

@Props()
class _$TodoListProps extends UiProps {
  List<Todo> todos;
  AddTodoCallback addTodo;
  ClearCompletedTodosCallback clearCompletedTodos;
  ClearTodoListCallback clearTodoList;
  CompleteTodoCallback completeTodo;
  DeleteTodoCallback deleteTodo;
}

@Component()
class TodoListComponent extends UiComponent<TodoListProps> {
  /// Create a new [TodoListItem] for each todo.
  List _renderListItems() {
    List items = [];

    for (Todo todo in props.todos) {
      items.add(
        (TodoListItem()
          ..key = todo.content
          ..todo = todo
          ..deleteTodo = props.deleteTodo)(),
      );
    }

    return items;
  }

  @override
  render() {
    return Dom.div()(
      (TodoInput()
        ..addTestId('todoInputComponent')
        ..addTodo = props.addTodo)(),
      (ListGroup()..addTestId('todoListGroup'))(
        _renderListItems(),
      ),
      (TodoFooter()
        ..addTestId('todoFooter')
        ..clearCompletedTodos = props.clearCompletedTodos
        ..clearTodoList = props.clearTodoList)(),
    );
  }
}
