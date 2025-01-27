import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';

part 'main.g.dart';

const supabaseUrl = 'https://csyromwftlbnyxyhuvyq.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNzeXJvbXdmdGxibnl4eWh1dnlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc3MjMzNDcsImV4cCI6MjA1MzI5OTM0N30.6_3yO76Fn4yqbB0TxuYVpq3HSSpgnHKeshny5dUsJ2c';

Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);

  runApp(ProviderScope(child: App()));
}

@riverpod
SupabaseClient client(Ref ref) {
  return Supabase.instance.client;
}