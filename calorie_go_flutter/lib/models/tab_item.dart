import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_item.freezed.dart';

@freezed
class TabItemModel with _$TabItemModel {
  const factory TabItemModel({
    required String title,
    required Icon icon,
    required String route,
  }) = _TabItemModel;
}
