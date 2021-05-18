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
    return (Dom.div()..className = 'py-3 mx-n1 clearfix')(
      (Button()
            ..addTestId('clearTodoList')
            ..className = 'float-right mx-1 btn'
            ..skin = ButtonSkin.DANGER
            ..size = ButtonSize.SMALL
            ..onClick = ((event) => props.clearTodoList()))(
          (Icon()..type = IconType.TRASH)(), (('Clear All'))),
      (Button()
        ..addTestId('clearCompletedTodos')
        ..className = 'float-right mx-1 btn'
        ..skin = ButtonSkin.WARNING
        ..size = ButtonSize.SMALL
        ..onClick = ((event) => props.clearCompletedTodos()))(
        'Clear Completed',
      ),
    );
  }
}
