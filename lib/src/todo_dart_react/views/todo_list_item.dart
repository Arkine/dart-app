part of '../components.dart';

@Factory()
UiFactory<TodoListItemProps> TodoListItem = _$TodoListItem;

@Props()
class _$TodoListItemProps extends UiProps {
  Todo todo;
  DeleteTodoCallback deleteTodo;
  ToggleCompleteTodoCallback toggleCompleteTodo;
}

@Component()
class TodoListItemComponent extends UiComponent<TodoListItemProps> {
  @override
  render() {
    return ListGroupItem()(
      (Dom.input()
        ..className = 'mr-3'
        ..type = 'checkbox'
        ..onChange = ((event) => props.toggleCompleteTodo(props.todo)))(),
      Dom.span()(
        props.todo.content,
      ),
      (Button()
        ..addTestId('deleteTodo')
        ..className = 'float-right'
        ..skin = ButtonSkin.DANGER
        ..size = ButtonSize.SMALL
        ..onClick = ((event) => props.deleteTodo(props.todo)))(
        'Delete',
      ),
    );
  }
}
