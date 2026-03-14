import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/insuree_datasource.dart';
import '../../domain/entities/insuree_entity.dart';

part 'insuree_provider.g.dart';

// Datasource Provider
@Riverpod(keepAlive: true)
InsureeDatasource insureeDatasource(Ref ref) {
  return InsureeDatasource();
}

// All Insurees Provider
@riverpod
Future<List<InsureeEntity>> insurees(Ref ref) async {
  final datasource = ref.watch(insureeDatasourceProvider);
  final models = await datasource.fetchInsurees();
  return models.map((model) => model.toEntity()).toList();
}

// Active Insurees Provider
@riverpod
Future<List<InsureeEntity>> activeInsurees(Ref ref) async {
  final allInsurees = await ref.watch(insureesProvider.future);
  return allInsurees.where((i) => i.status == InsureeStatus.active).toList();
}

// Expiring Insurees Provider
@riverpod
Future<List<InsureeEntity>> expiringInsurees(Ref ref) async {
  final allInsurees = await ref.watch(insureesProvider.future);
  return allInsurees
      .where(
        (i) =>
            i.status == InsureeStatus.expiringSoon ||
            (i.daysUntilExpiry != null && i.daysUntilExpiry! <= 7),
      )
      .toList();
}

// Pending Payment Insurees Provider
@riverpod
Future<List<InsureeEntity>> pendingPaymentInsurees(Ref ref) async {
  final allInsurees = await ref.watch(insureesProvider.future);
  return allInsurees
      .where(
        (i) =>
            i.status == InsureeStatus.pendingPayment ||
            i.status == InsureeStatus.expired,
      )
      .toList();
}

// Insuree Count Provider
@riverpod
Future<Map<String, int>> insureeCount(Ref ref) async {
  final allInsurees = await ref.watch(insureesProvider.future);

  return {
    'total': allInsurees.length,
    'active': allInsurees.where((i) => i.status == InsureeStatus.active).length,
    'expiring': allInsurees
        .where((i) => i.status == InsureeStatus.expiringSoon)
        .length,
    'pending': allInsurees
        .where((i) => i.status == InsureeStatus.pendingPayment)
        .length,
    'expired': allInsurees
        .where((i) => i.status == InsureeStatus.expired)
        .length,
  };
}

// Selected Insurees State Provider
@riverpod
class SelectedInsurees extends _$SelectedInsurees {
  @override
  List<String> build() {
    return [];
  }

  void toggleSelection(String insureeId) {
    if (state.contains(insureeId)) {
      state = state.where((id) => id != insureeId).toList();
    } else {
      state = [...state, insureeId];
    }
  }

  void selectAll(List<String> insureeIds) {
    state = insureeIds;
  }

  void clearSelection() {
    state = [];
  }

  bool isSelected(String insureeId) {
    return state.contains(insureeId);
  }
}
