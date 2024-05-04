// ignore_for_file: public_member_api_docs

import 'package:flutter_resume_builder_app/core/constants/cache/cache_constants.dart';
import 'package:hive_flutter/adapters.dart';

part 'cache_model.g.dart';

@HiveType(typeId: CacheConstants.appCacheTypeId)
class CacheModel {
  const CacheModel({this.isDark, this.isLogin, this.favorites});
  @HiveField(0)
  final bool? isLogin;
  @HiveField(1)
  final List<int>? favorites;
  @HiveField(2)
  final bool? isDark;

  CacheModel copyWith({bool? isLogin, List<int>? favorites, bool? isDark}) =>
      CacheModel(
        isLogin: isLogin ?? this.isLogin,
        favorites: favorites ?? this.favorites,
        isDark: isDark ?? this.isDark,
      );
}
