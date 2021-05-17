part of '../components.dart';

@Factory()
UiFactory<TodoAppProps> TodoApp = _$TodoApp;

@Props()
class _$TodoAppProps extends FluxUiProps<TodoActions, TodoStore> {}

@Component()
class TodoAppComponent extends FluxUiComponent<TodoAppProps> {
  @override
  render() {
    return (TodoList()
      ..addTodo = props.actions.addTodo
      ..deleteTodo = props.actions.deleteTodo
      ..completeTodo = props.actions.completeTodo
      ..clearTodoList = props.actions.clearTodoList
      ..clearCompletedTodos = props.actions.clearCompletedTodos
      ..todos = props.store.todos)();
  }
}
