import 'dart:math';
import '../../../../core/utils/logger.dart';
import '../models/risk_profile_model.dart';
import '../models/risk_factor_model.dart';
import '../models/intervention_model.dart';

class RiskEngineDatasource {
  final Random _random = Random();

  final List<String> _patientNames = [
    'Rajesh Kumar',
    'Priya Sharma',
    'Amit Patel',
    'Sunita Desai',
    'Vikram Singh',
    'Anita Reddy',
    'Suresh Gupta',
    'Meera Iyer',
    'Ramesh Nair',
    'Lakshmi Menon',
  ];

  final List<String> _conditions = [
    'Type 2 Diabetes',
    'Hypertension',
    'Coronary Artery Disease',
    'Chronic Obstructive Pulmonary Disease',
    'Chronic Kidney Disease',
    'Heart Failure',
  ];

  final List<String> _comorbidities = [
    'Diabetes',
    'Hypertension',
    'Hyperlipidemia',
    'Obesity',
    'Sleep Apnea',
    'Chronic Pain',
  ];

  // Mock API call to fetch risk profiles
  Future<List<RiskProfileModel>> fetchRiskProfiles({
    String? riskLevel,
    int limit = 50,
  }) async {
    try {
      Logger.info('Fetching risk profiles', tag: 'RiskEngineDatasource');

      await Future.delayed(Duration(milliseconds: 1000));

      final profiles = List.generate(limit, (index) {
        final riskScore = _random.nextDouble() * 100;
        final riskLevelStr = _getRiskLevelFromScore(riskScore);

        // Filter by risk level if provided
        if (riskLevel != null && riskLevelStr != riskLevel) {
          return null;
        }

        return _generateRiskProfile(index, riskScore, riskLevelStr);
      }).whereType<RiskProfileModel>().toList();

      Logger.info(
        'Fetched ${profiles.length} risk profiles',
        tag: 'RiskEngineDatasource',
      );
      return profiles;
    } catch (e) {
      Logger.error(
        'Error fetching risk profiles',
        tag: 'RiskEngineDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Mock API call to fetch single risk profile
  Future<RiskProfileModel> fetchRiskProfileById(String id) async {
    try {
      Logger.info('Fetching risk profile: $id', tag: 'RiskEngineDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final riskScore = 65 + _random.nextDouble() * 30;
      final riskLevel = _getRiskLevelFromScore(riskScore);

      return _generateRiskProfile(0, riskScore, riskLevel, id: id);
    } catch (e) {
      Logger.error(
        'Error fetching risk profile',
        tag: 'RiskEngineDatasource',
        error: e,
      );
      rethrow;
    }
  }

  RiskProfileModel _generateRiskProfile(
    int index,
    double riskScore,
    String riskLevel, {
    String? id,
  }) {
    final patientAge = 40 + _random.nextInt(40);
    final riskFactors = _generateRiskFactors(riskScore);
    final interventions = _generateInterventions(riskFactors);

    return RiskProfileModel(
      id: id ?? 'RP${1000 + index}',
      patientId: 'PT${_random.nextInt(1000)}',
      patientName: _patientNames[_random.nextInt(_patientNames.length)],
      patientAge: patientAge,
      gender: _random.nextBool() ? 'Male' : 'Female',
      riskScore: riskScore,
      riskLevel: riskLevel,
      riskFactors: riskFactors,
      recommendedInterventions: interventions,
      hospitalizationProbability: (riskScore / 100) * 0.3,
      emergencyVisitProbability: (riskScore / 100) * 0.45,
      estimatedAnnualCost: 50000 + (riskScore * 2000),
      potentialSavings: (riskScore * 1000) + (interventions.length * 5000),
      lastUpdated: DateTime.now().subtract(
        Duration(hours: _random.nextInt(48)),
      ),
      primaryCondition: _conditions[_random.nextInt(_conditions.length)],
      comorbidities: _random.nextBool()
          ? [
              _comorbidities[_random.nextInt(_comorbidities.length)],
              _comorbidities[_random.nextInt(_comorbidities.length)],
            ]
          : null,
    );
  }

  List<RiskFactorModel> _generateRiskFactors(double riskScore) {
    final factors = <RiskFactorModel>[];

    // Clinical factors
    if (riskScore > 50) {
      factors.add(
        RiskFactorModel(
          id: 'RF001',
          name: 'Uncontrolled HbA1c',
          category: 'clinical',
          impactScore: 8.5,
          description: 'HbA1c levels above target range',
          isModifiable: true,
          currentValue: '8.2%',
          targetValue: '<7.0%',
        ),
      );
    }

    if (riskScore > 60) {
      factors.add(
        RiskFactorModel(
          id: 'RF002',
          name: 'Elevated Blood Pressure',
          category: 'clinical',
          impactScore: 7.8,
          description: 'Blood pressure consistently above 140/90',
          isModifiable: true,
          currentValue: '152/95 mmHg',
          targetValue: '<130/80 mmHg',
        ),
      );
    }

    // Lifestyle factors
    if (_random.nextBool()) {
      factors.add(
        RiskFactorModel(
          id: 'RF003',
          name: 'Sedentary Lifestyle',
          category: 'lifestyle',
          impactScore: 6.5,
          description: 'Less than 30 minutes of physical activity per day',
          isModifiable: true,
          currentValue: '15 min/day',
          targetValue: '30+ min/day',
        ),
      );
    }

    if (riskScore > 70) {
      factors.add(
        RiskFactorModel(
          id: 'RF004',
          name: 'Poor Medication Adherence',
          category: 'lifestyle',
          impactScore: 9.2,
          description: 'Missing medications more than 2 times per week',
          isModifiable: true,
          currentValue: '60% adherence',
          targetValue: '>90% adherence',
        ),
      );
    }

    // Demographic factors
    factors.add(
      RiskFactorModel(
        id: 'RF005',
        name: 'Age >65',
        category: 'demographic',
        impactScore: 5.5,
        description: 'Advanced age increases risk',
        isModifiable: false,
      ),
    );

    return factors;
  }

  List<InterventionModel> _generateInterventions(
    List<RiskFactorModel> riskFactors,
  ) {
    final interventions = <InterventionModel>[];

    interventions.add(
      InterventionModel(
        id: 'INT001',
        title: 'Medication Optimization',
        description:
            'Review and adjust current medications for better glycemic control',
        type: 'medication',
        priority: 'high',
        expectedImpact: 15.5,
        estimatedCost: 5000,
        timeframe: '2 weeks',
        isImplemented: false,
      ),
    );

    interventions.add(
      InterventionModel(
        id: 'INT002',
        title: 'Weekly Telehealth Check-ins',
        description: 'Virtual consultations to monitor vitals and symptoms',
        type: 'monitoring',
        priority: 'medium',
        expectedImpact: 12.3,
        estimatedCost: 3000,
        timeframe: '1 month',
        isImplemented: false,
      ),
    );

    if (riskFactors.any((f) => f.category == 'lifestyle')) {
      interventions.add(
        InterventionModel(
          id: 'INT003',
          title: 'Lifestyle Modification Program',
          description: 'Structured diet and exercise program with health coach',
          type: 'lifestyle',
          priority: 'medium',
          expectedImpact: 18.7,
          estimatedCost: 8000,
          timeframe: '3 months',
          isImplemented: false,
        ),
      );
    }

    interventions.add(
      InterventionModel(
        id: 'INT004',
        title: 'Endocrinologist Referral',
        description: 'Specialized consultation for complex diabetes management',
        type: 'referral',
        priority: 'high',
        expectedImpact: 20.5,
        estimatedCost: 12000,
        timeframe: '1 week',
        isImplemented: false,
      ),
    );

    return interventions;
  }

  String _getRiskLevelFromScore(double score) {
    if (score >= 80) return 'critical';
    if (score >= 60) return 'high';
    if (score >= 40) return 'moderate';
    return 'low';
  }
}
