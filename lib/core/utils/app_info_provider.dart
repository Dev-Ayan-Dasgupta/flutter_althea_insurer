import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_info_provider.g.dart';

@riverpod
Future<PackageInfo> appInfo(Ref ref) async {
  return await PackageInfo.fromPlatform();
}

@riverpod
Future<String> appVersion(Ref ref) async {
  final info = await ref.watch(appInfoProvider.future);
  return '${info.version} (Build ${info.buildNumber})';
}
