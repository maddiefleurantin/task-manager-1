import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:task_manager_1/main.dart';

part 'task_list.g.dart';

@riverpod
SupabaseStreamFilterBuilder taskList (Ref ref) {
  return ref.watch(clientProvider)
    .from('tasks')
    .stream(primaryKey: ['id']);
}