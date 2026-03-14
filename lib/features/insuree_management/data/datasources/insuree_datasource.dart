import '../../../../core/utils/logger.dart';
import '../models/insuree_model.dart';

class InsureeDatasource {
  // Fetch all insurees
  Future<List<InsureeModel>> fetchInsurees() async {
    try {
      Logger.info('Fetching insurees', tag: 'InsureeDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final insurees = <InsureeModel>[
        InsureeModel(
          id: 'INS001',
          policyNumber: 'POL2024001234',
          fullName: 'Rajesh Kumar',
          email: 'rajesh.kumar@email.com',
          phoneNumber: '+91 98765 43210',
          dateOfBirth: DateTime(1952, 5, 15),
          age: 72,
          gender: 'Male',
          address:
              'Flat 301, Sunshine Apartments, Anna Nagar, Chennai - 600040',
          status: 'active',
          addedOn: now.subtract(Duration(days: 180)),
          subscriptionStartDate: now.subtract(Duration(days: 180)),
          subscriptionEndDate: now.add(Duration(days: 5)),
          isAutoRenew: true,
          monthlyFee: 49.0,
          medicalHistory: 'Diabetes Type 2, Hypertension',
          lastPaymentDate: now.subtract(Duration(days: 25)),
          nextPaymentDue: now.add(Duration(days: 5)),
          daysUntilExpiry: 5,
        ),
        InsureeModel(
          id: 'INS002',
          policyNumber: 'POL2024001235',
          fullName: 'Priya Sharma',
          email: 'priya.sharma@email.com',
          phoneNumber: '+91 98765 43211',
          dateOfBirth: DateTime(1985, 8, 22),
          age: 39,
          gender: 'Female',
          address: 'House No. 45, Sector 12, Gurgaon - 122001',
          status: 'expiring_soon',
          addedOn: now.subtract(Duration(days: 60)),
          subscriptionStartDate: now.subtract(Duration(days: 60)),
          subscriptionEndDate: now.add(Duration(days: 2)),
          isAutoRenew: false,
          monthlyFee: 49.0,
          lastPaymentDate: now.subtract(Duration(days: 28)),
          nextPaymentDue: now.add(Duration(days: 2)),
          daysUntilExpiry: 2,
        ),
        InsureeModel(
          id: 'INS003',
          policyNumber: 'POL2024001236',
          fullName: 'Amit Patel',
          email: 'amit.patel@email.com',
          phoneNumber: '+91 98765 43212',
          dateOfBirth: DateTime(1978, 3, 10),
          age: 46,
          gender: 'Male',
          address: 'Bungalow 12, Satellite Road, Ahmedabad - 380015',
          status: 'active',
          addedOn: now.subtract(Duration(days: 120)),
          subscriptionStartDate: now.subtract(Duration(days: 120)),
          subscriptionEndDate: now.add(Duration(days: 20)),
          isAutoRenew: true,
          monthlyFee: 49.0,
          lastPaymentDate: now.subtract(Duration(days: 10)),
          nextPaymentDue: now.add(Duration(days: 20)),
          daysUntilExpiry: 20,
        ),
        InsureeModel(
          id: 'INS004',
          policyNumber: 'POL2024001237',
          fullName: 'Sneha Reddy',
          email: 'sneha.reddy@email.com',
          phoneNumber: '+91 98765 43213',
          dateOfBirth: DateTime(1990, 11, 5),
          age: 34,
          gender: 'Female',
          address: 'Apartment 5B, Tech Park, Whitefield, Bangalore - 560066',
          status: 'pending_payment',
          addedOn: now.subtract(Duration(days: 35)),
          subscriptionStartDate: now.subtract(Duration(days: 35)),
          subscriptionEndDate: now.subtract(Duration(days: 5)),
          isAutoRenew: false,
          monthlyFee: 49.0,
          lastPaymentDate: now.subtract(Duration(days: 35)),
          nextPaymentDue: now.subtract(Duration(days: 5)),
          daysUntilExpiry: -5,
        ),
        InsureeModel(
          id: 'INS005',
          policyNumber: 'POL2024001238',
          fullName: 'Vikram Singh',
          email: 'vikram.singh@email.com',
          phoneNumber: '+91 98765 43214',
          dateOfBirth: DateTime(1965, 7, 18),
          age: 59,
          gender: 'Male',
          address: 'Villa 23, Palm Grove Society, Pune - 411001',
          status: 'expired',
          addedOn: now.subtract(Duration(days: 90)),
          subscriptionStartDate: now.subtract(Duration(days: 90)),
          subscriptionEndDate: now.subtract(Duration(days: 30)),
          isAutoRenew: false,
          monthlyFee: 49.0,
          lastPaymentDate: now.subtract(Duration(days: 60)),
          nextPaymentDue: now.subtract(Duration(days: 30)),
          daysUntilExpiry: -30,
        ),
      ];

      Logger.info(
        'Fetched ${insurees.length} insurees',
        tag: 'InsureeDatasource',
      );
      return insurees;
    } catch (e) {
      Logger.error(
        'Error fetching insurees',
        tag: 'InsureeDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Add new insuree
  Future<InsureeModel> addInsuree(Map<String, dynamic> data) async {
    try {
      Logger.info('Adding new insuree', tag: 'InsureeDatasource');

      await Future.delayed(Duration(milliseconds: 800));

      final now = DateTime.now();
      final insuree = InsureeModel(
        id: 'INS${now.millisecondsSinceEpoch % 10000}',
        policyNumber: data['policyNumber'],
        fullName: data['fullName'],
        email: data['email'],
        phoneNumber: data['phoneNumber'],
        dateOfBirth: data['dateOfBirth'],
        age: data['age'],
        gender: data['gender'],
        address: data['address'],
        status: 'pending_payment',
        addedOn: now,
        subscriptionStartDate: now,
        subscriptionEndDate: now.add(Duration(days: 30)),
        isAutoRenew: data['isAutoRenew'] ?? false,
        monthlyFee: 49.0,
        medicalHistory: data['medicalHistory'],
        notes: data['notes'],
        nextPaymentDue: now,
        daysUntilExpiry: 0,
      );

      Logger.info(
        'Insuree added successfully: ${insuree.id}',
        tag: 'InsureeDatasource',
      );
      return insuree;
    } catch (e) {
      Logger.error('Error adding insuree', tag: 'InsureeDatasource', error: e);
      rethrow;
    }
  }

  // Remove insuree
  Future<bool> removeInsuree(String insureeId, String reason) async {
    try {
      Logger.info('Removing insuree: $insureeId', tag: 'InsureeDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      Logger.info('Insuree removed successfully', tag: 'InsureeDatasource');
      return true;
    } catch (e) {
      Logger.error(
        'Error removing insuree',
        tag: 'InsureeDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Update insuree
  Future<bool> updateInsuree(
    String insureeId,
    Map<String, dynamic> updates,
  ) async {
    try {
      Logger.info('Updating insuree: $insureeId', tag: 'InsureeDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      Logger.info('Insuree updated successfully', tag: 'InsureeDatasource');
      return true;
    } catch (e) {
      Logger.error(
        'Error updating insuree',
        tag: 'InsureeDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Renew subscription
  Future<bool> renewSubscription(String insureeId) async {
    try {
      Logger.info(
        'Renewing subscription: $insureeId',
        tag: 'InsureeDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      Logger.info(
        'Subscription renewed successfully',
        tag: 'InsureeDatasource',
      );
      return true;
    } catch (e) {
      Logger.error(
        'Error renewing subscription',
        tag: 'InsureeDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Bulk operations
  Future<bool> bulkRemoveInsurees(
    List<String> insureeIds,
    String reason,
  ) async {
    try {
      Logger.info(
        'Bulk removing ${insureeIds.length} insurees',
        tag: 'InsureeDatasource',
      );

      await Future.delayed(Duration(milliseconds: 800));

      Logger.info('Insurees removed successfully', tag: 'InsureeDatasource');
      return true;
    } catch (e) {
      Logger.error('Error in bulk remove', tag: 'InsureeDatasource', error: e);
      rethrow;
    }
  }

  // Get insurees expiring soon
  Future<List<InsureeModel>> getExpiringInsurees() async {
    try {
      final allInsurees = await fetchInsurees();
      return allInsurees
          .where(
            (i) =>
                i.status == 'expiring_soon' ||
                (i.daysUntilExpiry != null && i.daysUntilExpiry! <= 7),
          )
          .toList();
    } catch (e) {
      Logger.error(
        'Error fetching expiring insurees',
        tag: 'InsureeDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Get pending payment insurees
  Future<List<InsureeModel>> getPendingPaymentInsurees() async {
    try {
      final allInsurees = await fetchInsurees();
      return allInsurees
          .where((i) => i.status == 'pending_payment' || i.status == 'expired')
          .toList();
    } catch (e) {
      Logger.error(
        'Error fetching pending payment insurees',
        tag: 'InsureeDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
