part of '../components.dart';

@Factory()
UiFactory<TodoFooterProps> TodoFooter = _$TodoFooter;

@Props()
class _$TodoFooterProps extends FluxUiProps<TodoActions, TodoStore> {}

@Component()
class TodoFooterComponent extends FluxUiComponent<TodoFooterProps> {
  @override
  render() {
    return (Button()
      ..addTestId('clearCompletedTodos')
      ..className = 'float-right'
      ..skin = ButtonSkin.DANGER
      ..size = ButtonSize.SMALL
      ..onClick = ((event) => props.clearCompletedTodos()))(
      'Remove Completed',
    );
  }
}
