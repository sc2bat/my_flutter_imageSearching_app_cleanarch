import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_image_searching_app_cleanarch/data/data_sources/constants.dart';
import 'package:my_flutter_image_searching_app_cleanarch/env/env.dart';
import 'package:my_flutter_image_searching_app_cleanarch/utils/simple_logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  test('view history insert testing', () async {
    final supabase = SupabaseClient(Env.supabaseUrl, Env.supabaseApiKey);
    int userId = 0;
    try {
      final data = await supabase.from(TB_VIEW_HISTORY).insert({
        'view_user_id': userId != 0 ? userId : null,
        'view_image_id': 5535486,
      }).select();

      logger.info(data);
    } catch (e) {
      logger.info('$e');
    }
  });
}
