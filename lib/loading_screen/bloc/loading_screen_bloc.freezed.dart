// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingAnimationType newAnimationType)
        newAnimationSelected,
    required TResult Function(Color newColor) newPrimaryColorSelected,
    required TResult Function(Color newColor) newSecondaryColorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult? Function(Color newColor)? newPrimaryColorSelected,
    TResult? Function(Color newColor)? newSecondaryColorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult Function(Color newColor)? newPrimaryColorSelected,
    TResult Function(Color newColor)? newSecondaryColorSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewAnimationSelected value) newAnimationSelected,
    required TResult Function(_NewPrimaryColorSelected value)
        newPrimaryColorSelected,
    required TResult Function(_NewSecondaryColorSelected value)
        newSecondaryColorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult? Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult? Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingScreenEventCopyWith<$Res> {
  factory $LoadingScreenEventCopyWith(
          LoadingScreenEvent value, $Res Function(LoadingScreenEvent) then) =
      _$LoadingScreenEventCopyWithImpl<$Res, LoadingScreenEvent>;
}

/// @nodoc
class _$LoadingScreenEventCopyWithImpl<$Res, $Val extends LoadingScreenEvent>
    implements $LoadingScreenEventCopyWith<$Res> {
  _$LoadingScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewAnimationSelectedImplCopyWith<$Res> {
  factory _$$NewAnimationSelectedImplCopyWith(_$NewAnimationSelectedImpl value,
          $Res Function(_$NewAnimationSelectedImpl) then) =
      __$$NewAnimationSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadingAnimationType newAnimationType});
}

/// @nodoc
class __$$NewAnimationSelectedImplCopyWithImpl<$Res>
    extends _$LoadingScreenEventCopyWithImpl<$Res, _$NewAnimationSelectedImpl>
    implements _$$NewAnimationSelectedImplCopyWith<$Res> {
  __$$NewAnimationSelectedImplCopyWithImpl(_$NewAnimationSelectedImpl _value,
      $Res Function(_$NewAnimationSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAnimationType = null,
  }) {
    return _then(_$NewAnimationSelectedImpl(
      newAnimationType: null == newAnimationType
          ? _value.newAnimationType
          : newAnimationType // ignore: cast_nullable_to_non_nullable
              as LoadingAnimationType,
    ));
  }
}

/// @nodoc

class _$NewAnimationSelectedImpl implements _NewAnimationSelected {
  const _$NewAnimationSelectedImpl({required this.newAnimationType});

  @override
  final LoadingAnimationType newAnimationType;

  @override
  String toString() {
    return 'LoadingScreenEvent.newAnimationSelected(newAnimationType: $newAnimationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewAnimationSelectedImpl &&
            (identical(other.newAnimationType, newAnimationType) ||
                other.newAnimationType == newAnimationType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newAnimationType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewAnimationSelectedImplCopyWith<_$NewAnimationSelectedImpl>
      get copyWith =>
          __$$NewAnimationSelectedImplCopyWithImpl<_$NewAnimationSelectedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingAnimationType newAnimationType)
        newAnimationSelected,
    required TResult Function(Color newColor) newPrimaryColorSelected,
    required TResult Function(Color newColor) newSecondaryColorSelected,
  }) {
    return newAnimationSelected(newAnimationType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult? Function(Color newColor)? newPrimaryColorSelected,
    TResult? Function(Color newColor)? newSecondaryColorSelected,
  }) {
    return newAnimationSelected?.call(newAnimationType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult Function(Color newColor)? newPrimaryColorSelected,
    TResult Function(Color newColor)? newSecondaryColorSelected,
    required TResult orElse(),
  }) {
    if (newAnimationSelected != null) {
      return newAnimationSelected(newAnimationType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewAnimationSelected value) newAnimationSelected,
    required TResult Function(_NewPrimaryColorSelected value)
        newPrimaryColorSelected,
    required TResult Function(_NewSecondaryColorSelected value)
        newSecondaryColorSelected,
  }) {
    return newAnimationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult? Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult? Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
  }) {
    return newAnimationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
    required TResult orElse(),
  }) {
    if (newAnimationSelected != null) {
      return newAnimationSelected(this);
    }
    return orElse();
  }
}

abstract class _NewAnimationSelected implements LoadingScreenEvent {
  const factory _NewAnimationSelected(
          {required final LoadingAnimationType newAnimationType}) =
      _$NewAnimationSelectedImpl;

  LoadingAnimationType get newAnimationType;
  @JsonKey(ignore: true)
  _$$NewAnimationSelectedImplCopyWith<_$NewAnimationSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewPrimaryColorSelectedImplCopyWith<$Res> {
  factory _$$NewPrimaryColorSelectedImplCopyWith(
          _$NewPrimaryColorSelectedImpl value,
          $Res Function(_$NewPrimaryColorSelectedImpl) then) =
      __$$NewPrimaryColorSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color newColor});
}

/// @nodoc
class __$$NewPrimaryColorSelectedImplCopyWithImpl<$Res>
    extends _$LoadingScreenEventCopyWithImpl<$Res,
        _$NewPrimaryColorSelectedImpl>
    implements _$$NewPrimaryColorSelectedImplCopyWith<$Res> {
  __$$NewPrimaryColorSelectedImplCopyWithImpl(
      _$NewPrimaryColorSelectedImpl _value,
      $Res Function(_$NewPrimaryColorSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newColor = null,
  }) {
    return _then(_$NewPrimaryColorSelectedImpl(
      newColor: null == newColor
          ? _value.newColor
          : newColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$NewPrimaryColorSelectedImpl implements _NewPrimaryColorSelected {
  const _$NewPrimaryColorSelectedImpl({required this.newColor});

  @override
  final Color newColor;

  @override
  String toString() {
    return 'LoadingScreenEvent.newPrimaryColorSelected(newColor: $newColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPrimaryColorSelectedImpl &&
            (identical(other.newColor, newColor) ||
                other.newColor == newColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPrimaryColorSelectedImplCopyWith<_$NewPrimaryColorSelectedImpl>
      get copyWith => __$$NewPrimaryColorSelectedImplCopyWithImpl<
          _$NewPrimaryColorSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingAnimationType newAnimationType)
        newAnimationSelected,
    required TResult Function(Color newColor) newPrimaryColorSelected,
    required TResult Function(Color newColor) newSecondaryColorSelected,
  }) {
    return newPrimaryColorSelected(newColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult? Function(Color newColor)? newPrimaryColorSelected,
    TResult? Function(Color newColor)? newSecondaryColorSelected,
  }) {
    return newPrimaryColorSelected?.call(newColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult Function(Color newColor)? newPrimaryColorSelected,
    TResult Function(Color newColor)? newSecondaryColorSelected,
    required TResult orElse(),
  }) {
    if (newPrimaryColorSelected != null) {
      return newPrimaryColorSelected(newColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewAnimationSelected value) newAnimationSelected,
    required TResult Function(_NewPrimaryColorSelected value)
        newPrimaryColorSelected,
    required TResult Function(_NewSecondaryColorSelected value)
        newSecondaryColorSelected,
  }) {
    return newPrimaryColorSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult? Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult? Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
  }) {
    return newPrimaryColorSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
    required TResult orElse(),
  }) {
    if (newPrimaryColorSelected != null) {
      return newPrimaryColorSelected(this);
    }
    return orElse();
  }
}

abstract class _NewPrimaryColorSelected implements LoadingScreenEvent {
  const factory _NewPrimaryColorSelected({required final Color newColor}) =
      _$NewPrimaryColorSelectedImpl;

  Color get newColor;
  @JsonKey(ignore: true)
  _$$NewPrimaryColorSelectedImplCopyWith<_$NewPrimaryColorSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewSecondaryColorSelectedImplCopyWith<$Res> {
  factory _$$NewSecondaryColorSelectedImplCopyWith(
          _$NewSecondaryColorSelectedImpl value,
          $Res Function(_$NewSecondaryColorSelectedImpl) then) =
      __$$NewSecondaryColorSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color newColor});
}

/// @nodoc
class __$$NewSecondaryColorSelectedImplCopyWithImpl<$Res>
    extends _$LoadingScreenEventCopyWithImpl<$Res,
        _$NewSecondaryColorSelectedImpl>
    implements _$$NewSecondaryColorSelectedImplCopyWith<$Res> {
  __$$NewSecondaryColorSelectedImplCopyWithImpl(
      _$NewSecondaryColorSelectedImpl _value,
      $Res Function(_$NewSecondaryColorSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newColor = null,
  }) {
    return _then(_$NewSecondaryColorSelectedImpl(
      newColor: null == newColor
          ? _value.newColor
          : newColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$NewSecondaryColorSelectedImpl implements _NewSecondaryColorSelected {
  const _$NewSecondaryColorSelectedImpl({required this.newColor});

  @override
  final Color newColor;

  @override
  String toString() {
    return 'LoadingScreenEvent.newSecondaryColorSelected(newColor: $newColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSecondaryColorSelectedImpl &&
            (identical(other.newColor, newColor) ||
                other.newColor == newColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSecondaryColorSelectedImplCopyWith<_$NewSecondaryColorSelectedImpl>
      get copyWith => __$$NewSecondaryColorSelectedImplCopyWithImpl<
          _$NewSecondaryColorSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadingAnimationType newAnimationType)
        newAnimationSelected,
    required TResult Function(Color newColor) newPrimaryColorSelected,
    required TResult Function(Color newColor) newSecondaryColorSelected,
  }) {
    return newSecondaryColorSelected(newColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult? Function(Color newColor)? newPrimaryColorSelected,
    TResult? Function(Color newColor)? newSecondaryColorSelected,
  }) {
    return newSecondaryColorSelected?.call(newColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingAnimationType newAnimationType)?
        newAnimationSelected,
    TResult Function(Color newColor)? newPrimaryColorSelected,
    TResult Function(Color newColor)? newSecondaryColorSelected,
    required TResult orElse(),
  }) {
    if (newSecondaryColorSelected != null) {
      return newSecondaryColorSelected(newColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewAnimationSelected value) newAnimationSelected,
    required TResult Function(_NewPrimaryColorSelected value)
        newPrimaryColorSelected,
    required TResult Function(_NewSecondaryColorSelected value)
        newSecondaryColorSelected,
  }) {
    return newSecondaryColorSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult? Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult? Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
  }) {
    return newSecondaryColorSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewAnimationSelected value)? newAnimationSelected,
    TResult Function(_NewPrimaryColorSelected value)? newPrimaryColorSelected,
    TResult Function(_NewSecondaryColorSelected value)?
        newSecondaryColorSelected,
    required TResult orElse(),
  }) {
    if (newSecondaryColorSelected != null) {
      return newSecondaryColorSelected(this);
    }
    return orElse();
  }
}

abstract class _NewSecondaryColorSelected implements LoadingScreenEvent {
  const factory _NewSecondaryColorSelected({required final Color newColor}) =
      _$NewSecondaryColorSelectedImpl;

  Color get newColor;
  @JsonKey(ignore: true)
  _$$NewSecondaryColorSelectedImplCopyWith<_$NewSecondaryColorSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadingScreenState {
  LoadingAnimationType get loadingAnimationType =>
      throw _privateConstructorUsedError;
  Color get primaryColor => throw _privateConstructorUsedError;
  Color get secondaryColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingScreenStateCopyWith<LoadingScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingScreenStateCopyWith<$Res> {
  factory $LoadingScreenStateCopyWith(
          LoadingScreenState value, $Res Function(LoadingScreenState) then) =
      _$LoadingScreenStateCopyWithImpl<$Res, LoadingScreenState>;
  @useResult
  $Res call(
      {LoadingAnimationType loadingAnimationType,
      Color primaryColor,
      Color secondaryColor});
}

/// @nodoc
class _$LoadingScreenStateCopyWithImpl<$Res, $Val extends LoadingScreenState>
    implements $LoadingScreenStateCopyWith<$Res> {
  _$LoadingScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAnimationType = null,
    Object? primaryColor = null,
    Object? secondaryColor = null,
  }) {
    return _then(_value.copyWith(
      loadingAnimationType: null == loadingAnimationType
          ? _value.loadingAnimationType
          : loadingAnimationType // ignore: cast_nullable_to_non_nullable
              as LoadingAnimationType,
      primaryColor: null == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as Color,
      secondaryColor: null == secondaryColor
          ? _value.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingScreenStateImplCopyWith<$Res>
    implements $LoadingScreenStateCopyWith<$Res> {
  factory _$$LoadingScreenStateImplCopyWith(_$LoadingScreenStateImpl value,
          $Res Function(_$LoadingScreenStateImpl) then) =
      __$$LoadingScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingAnimationType loadingAnimationType,
      Color primaryColor,
      Color secondaryColor});
}

/// @nodoc
class __$$LoadingScreenStateImplCopyWithImpl<$Res>
    extends _$LoadingScreenStateCopyWithImpl<$Res, _$LoadingScreenStateImpl>
    implements _$$LoadingScreenStateImplCopyWith<$Res> {
  __$$LoadingScreenStateImplCopyWithImpl(_$LoadingScreenStateImpl _value,
      $Res Function(_$LoadingScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingAnimationType = null,
    Object? primaryColor = null,
    Object? secondaryColor = null,
  }) {
    return _then(_$LoadingScreenStateImpl(
      loadingAnimationType: null == loadingAnimationType
          ? _value.loadingAnimationType
          : loadingAnimationType // ignore: cast_nullable_to_non_nullable
              as LoadingAnimationType,
      primaryColor: null == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as Color,
      secondaryColor: null == secondaryColor
          ? _value.secondaryColor
          : secondaryColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$LoadingScreenStateImpl implements _LoadingScreenState {
  const _$LoadingScreenStateImpl(
      {required this.loadingAnimationType,
      required this.primaryColor,
      required this.secondaryColor});

  @override
  final LoadingAnimationType loadingAnimationType;
  @override
  final Color primaryColor;
  @override
  final Color secondaryColor;

  @override
  String toString() {
    return 'LoadingScreenState(loadingAnimationType: $loadingAnimationType, primaryColor: $primaryColor, secondaryColor: $secondaryColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingScreenStateImpl &&
            (identical(other.loadingAnimationType, loadingAnimationType) ||
                other.loadingAnimationType == loadingAnimationType) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.secondaryColor, secondaryColor) ||
                other.secondaryColor == secondaryColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, loadingAnimationType, primaryColor, secondaryColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingScreenStateImplCopyWith<_$LoadingScreenStateImpl> get copyWith =>
      __$$LoadingScreenStateImplCopyWithImpl<_$LoadingScreenStateImpl>(
          this, _$identity);
}

abstract class _LoadingScreenState implements LoadingScreenState {
  const factory _LoadingScreenState(
      {required final LoadingAnimationType loadingAnimationType,
      required final Color primaryColor,
      required final Color secondaryColor}) = _$LoadingScreenStateImpl;

  @override
  LoadingAnimationType get loadingAnimationType;
  @override
  Color get primaryColor;
  @override
  Color get secondaryColor;
  @override
  @JsonKey(ignore: true)
  _$$LoadingScreenStateImplCopyWith<_$LoadingScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
