import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'task_list.g.dart';

@riverpod
PostgrestFilterBuilder taskList (Ref ref) {
  return Supabase.instance.client
    .from('Tasks')
    .select();
}