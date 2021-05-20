part of '../components.dart';

@Factory()
UiFactory<IconProps> Icon = _$Icon;

@Props()
class _$IconProps extends UiProps {
  /// The `type` of [Icon] to display
  /// rendered via [Dom.i].
  ///
  /// Default: [IconType.Default]
  IconType type;
}

@State()
class _$IconState extends UiState {}

@Component()
class IconComponent<T extends IconProps, S extends IconState>
    extends UiStatefulComponent<T, S> {
  @override
  Map getDefaultProps() => (newProps()..type = IconType.DEFAULT);

  @override
  render() {
    return renderIcon();
  }

  ReactElement renderIcon() {
    return (Dom.i()
      ..addProps(copyUnconsumedDomProps())
      ..className = getIconClasses().toClassName()
      ..addProps(ariaProps()..role = 'presentation'))();
  }

  ClassNameBuilder getIconClasses() {
    return forwardingClassNameBuilder()..add(props.type.className);
  }
}

/// Size options for a [Icon] component.
class IconType extends ClassNameConstant {
  const IconType._(String name, String className) : super(name, className);

  /// [className] value: ''
  static const IconType DEFAULT = const IconType._('DEFAULT', '');

  /// [className] value: 'bi bi-check'
  static const IconType CHECK = const IconType._('CHECK', 'bi bi-check');

  /// [className] value: 'bi bi-trash'
  static const IconType TRASH = const IconType._('TRASH', 'bi bi-trash');
}
