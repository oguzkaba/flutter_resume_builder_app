// ignore_for_file: public_member_api_docs

import 'package:flutter_resume_builder_app/core/constants/cache/cache_constants.dart';
import 'package:flutter_resume_builder_app/core/init/cache/cache_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// The `abstract class ICacheManager<T>` is defining an abstract class in Dart that serves as a
/// blueprint for cache managers. It includes methods and properties that need to be implemented by
/// concrete cache manager classes. The `<T>` is a generic type parameter that allows the class to work
/// with different types of data.
abstract class ICacheManager<T> {
  ICacheManager(this.key);

  final String key;
  Box<T>? box;

  Future<void> init() async {
    registerAdapters();
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(key);
    }
  }

  void registerAdapters();
  // Future<void> addItem(T item);///model kaydederken

  T? getModel(String key);
  Future<void> setModel(String key, T item);
  Future<void> deleteToken(String key);
  Future<void> clear();
}

/// The `CacheManager` class is implementing the `ICacheManager` abstract class with a specific
/// type parameter `CacheModel`. It provides concrete implementations for methods such as
/// `getModel`, `setModel`, `deleteToken`, `clear`, and `registerAdapters`.
class CacheManager extends ICacheManager<CacheModel> {
  CacheManager(super.key);

  // @override
  // Future<void> addItem(String item) async => await box?.add(item);

  @override
  Future<void> deleteToken(String key) async => await box?.delete(key);

  @override
  CacheModel? getModel(String key) => box?.get(key);

  @override
  Future<void> setModel(String key, CacheModel item) async =>
      await box?.put(key, item);

  @override
  Future<void> clear() async => box!.clear();

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(CacheConstants.appCacheTypeId)) {
      Hive.registerAdapter(CacheModelAdapter());
    }
  }
}
