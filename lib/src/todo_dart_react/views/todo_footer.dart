part of '../components.dart';

@Factory()
UiFactory<TodoFooterProps> TodoFooter = _$TodoFooter;

@Props()
class _$TodoFooterProps extends FluxUiProps<TodoActions, TodoStore> {
  ClearCompletedTodosCallback clearCompletedTodos;
  ClearTodoListCallback clearTodoList;
}

@Component()
class TodoFooterComponent extends FluxUiComponent<TodoFooterProps> {
  @override
  render() {
    return (Dom.div()(
      (Button()
        ..addTestId('clearTodoList')
        ..className = 'float-right'
        ..skin = ButtonSkin.DANGER
        ..size = ButtonSize.SMALL
        ..onClick = ((event) => props.clearCompletedTodos()))(
        'Clear All',
      ),
      (Button()
        ..addTestId('clearCompletedTodos')
        ..className = 'float-right'
        ..skin = ButtonSkin.WARNING
        ..size = ButtonSize.SMALL
        ..onClick = ((event) => props.clearCompletedTodos()))(
        'Clear Completed',
      ),
    ));
  }
}
