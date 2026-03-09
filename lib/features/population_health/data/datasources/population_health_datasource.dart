import '../../../../core/utils/logger.dart';
import '../models/disease_prevalence_model.dart';
import '../models/health_trend_model.dart';
import '../models/adherence_cohort_model.dart';
import '../models/risk_segmentation_model.dart';

class PopulationHealthDatasource {
  // Fetch disease prevalence data
  Future<List<DiseasePrevalenceModel>> fetchDiseasePrevalence() async {
    try {
      Logger.info(
        'Fetching disease prevalence',
        tag: 'PopulationHealthDatasource',
      );

      await Future.delayed(Duration(milliseconds: 800));

      final diseases = [
        DiseasePrevalenceModel(
          id: 'DP001',
          category: 'diabetes',
          diseaseName: 'Type 2 Diabetes',
          totalCases: 1900,
          newCasesThisQuarter: 85,
          prevalenceRate: 19.0,
          changeFromLastQuarter: -2.3,
          criticalCases: 220,
          moderateCases: 1100,
          mildCases: 580,
          avgAge: 58.5,
          mostAffectedZone: 'Rajarhat',
          costImpact: 45000.0,
        ),
        DiseasePrevalenceModel(
          id: 'DP002',
          category: 'hypertension',
          diseaseName: 'Hypertension',
          totalCases: 2200,
          newCasesThisQuarter: 110,
          prevalenceRate: 22.0,
          changeFromLastQuarter: 1.5,
          criticalCases: 180,
          moderateCases: 1400,
          mildCases: 620,
          avgAge: 55.2,
          mostAffectedZone: 'Kasba',
          costImpact: 28000.0,
        ),
        DiseasePrevalenceModel(
          id: 'DP003',
          category: 'cardiac',
          diseaseName: 'Coronary Artery Disease',
          totalCases: 700,
          newCasesThisQuarter: 45,
          prevalenceRate: 7.0,
          changeFromLastQuarter: 0.5,
          criticalCases: 120,
          moderateCases: 380,
          mildCases: 200,
          avgAge: 62.8,
          mostAffectedZone: 'Rajarhat',
          costImpact: 85000.0,
        ),
        DiseasePrevalenceModel(
          id: 'DP004',
          category: 'respiratory',
          diseaseName: 'COPD',
          totalCases: 320,
          newCasesThisQuarter: 18,
          prevalenceRate: 3.2,
          changeFromLastQuarter: -0.8,
          criticalCases: 55,
          moderateCases: 180,
          mildCases: 85,
          avgAge: 65.5,
          mostAffectedZone: 'Kasba',
          costImpact: 52000.0,
        ),
        DiseasePrevalenceModel(
          id: 'DP005',
          category: 'kidney',
          diseaseName: 'Chronic Kidney Disease',
          totalCases: 180,
          newCasesThisQuarter: 12,
          prevalenceRate: 1.8,
          changeFromLastQuarter: 0.2,
          criticalCases: 35,
          moderateCases: 90,
          mildCases: 55,
          avgAge: 61.2,
          mostAffectedZone: 'Rajarhat',
          costImpact: 95000.0,
        ),
        DiseasePrevalenceModel(
          id: 'DP006',
          category: 'mobility',
          diseaseName: 'Mobility Impairment',
          totalCases: 420,
          newCasesThisQuarter: 28,
          prevalenceRate: 4.2,
          changeFromLastQuarter: -1.2,
          criticalCases: 80,
          moderateCases: 240,
          mildCases: 100,
          avgAge: 68.8,
          mostAffectedZone: 'Kasba',
          costImpact: 38000.0,
        ),
      ];

      Logger.info(
        'Fetched ${diseases.length} disease prevalence records',
        tag: 'PopulationHealthDatasource',
      );
      return diseases;
    } catch (e) {
      Logger.error(
        'Error fetching disease prevalence',
        tag: 'PopulationHealthDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch health trends
  Future<List<HealthTrendModel>> fetchHealthTrends() async {
    try {
      Logger.info('Fetching health trends', tag: 'PopulationHealthDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final trends = [
        HealthTrendModel(
          id: 'HT001',
          metricName: 'Average HbA1c (Diabetics)',
          category: 'Diabetes Control',
          direction: 'improving',
          currentValue: 7.2,
          changePercentage: -8.5,
          quarterlyData: [
            TrendDataPointModel(
              quarter: 'Q1 2025',
              value: 7.8,
              date: now.subtract(Duration(days: 270)),
            ),
            TrendDataPointModel(
              quarter: 'Q2 2025',
              value: 7.6,
              date: now.subtract(Duration(days: 180)),
            ),
            TrendDataPointModel(
              quarter: 'Q3 2025',
              value: 7.4,
              date: now.subtract(Duration(days: 90)),
            ),
            TrendDataPointModel(quarter: 'Q4 2025', value: 7.2, date: now),
          ],
          insight: 'Improved adherence to medication and lifestyle programs',
        ),
        HealthTrendModel(
          id: 'HT002',
          metricName: 'Hospitalization Rate',
          category: 'Care Outcomes',
          direction: 'improving',
          currentValue: 5.8,
          changePercentage: -22.7,
          quarterlyData: [
            TrendDataPointModel(
              quarter: 'Q1 2025',
              value: 7.5,
              date: now.subtract(Duration(days: 270)),
            ),
            TrendDataPointModel(
              quarter: 'Q2 2025',
              value: 7.0,
              date: now.subtract(Duration(days: 180)),
            ),
            TrendDataPointModel(
              quarter: 'Q3 2025',
              value: 6.3,
              date: now.subtract(Duration(days: 90)),
            ),
            TrendDataPointModel(quarter: 'Q4 2025', value: 5.8, date: now),
          ],
          insight:
              'Early intervention and home care reducing hospital admissions',
        ),
        HealthTrendModel(
          id: 'HT003',
          metricName: 'Medication Adherence',
          category: 'Adherence',
          direction: 'improving',
          currentValue: 78.5,
          changePercentage: 12.3,
          quarterlyData: [
            TrendDataPointModel(
              quarter: 'Q1 2025',
              value: 70.0,
              date: now.subtract(Duration(days: 270)),
            ),
            TrendDataPointModel(
              quarter: 'Q2 2025',
              value: 73.5,
              date: now.subtract(Duration(days: 180)),
            ),
            TrendDataPointModel(
              quarter: 'Q3 2025',
              value: 76.2,
              date: now.subtract(Duration(days: 90)),
            ),
            TrendDataPointModel(quarter: 'Q4 2025', value: 78.5, date: now),
          ],
          insight:
              'Wearable monitoring and nurse follow-ups improving compliance',
        ),
        HealthTrendModel(
          id: 'HT004',
          metricName: 'Fall Incidents',
          category: 'Safety',
          direction: 'improving',
          currentValue: 2.1,
          changePercentage: -35.4,
          quarterlyData: [
            TrendDataPointModel(
              quarter: 'Q1 2025',
              value: 3.25,
              date: now.subtract(Duration(days: 270)),
            ),
            TrendDataPointModel(
              quarter: 'Q2 2025',
              value: 2.9,
              date: now.subtract(Duration(days: 180)),
            ),
            TrendDataPointModel(
              quarter: 'Q3 2025',
              value: 2.5,
              date: now.subtract(Duration(days: 90)),
            ),
            TrendDataPointModel(quarter: 'Q4 2025', value: 2.1, date: now),
          ],
          insight:
              'Wearable fall detection and home safety programs showing impact',
        ),
        HealthTrendModel(
          id: 'HT005',
          metricName: 'Blood Pressure Control',
          category: 'Hypertension',
          direction: 'stable',
          currentValue: 82.0,
          changePercentage: 1.2,
          quarterlyData: [
            TrendDataPointModel(
              quarter: 'Q1 2025',
              value: 81.0,
              date: now.subtract(Duration(days: 270)),
            ),
            TrendDataPointModel(
              quarter: 'Q2 2025',
              value: 81.5,
              date: now.subtract(Duration(days: 180)),
            ),
            TrendDataPointModel(
              quarter: 'Q3 2025',
              value: 81.8,
              date: now.subtract(Duration(days: 90)),
            ),
            TrendDataPointModel(quarter: 'Q4 2025', value: 82.0, date: now),
          ],
          insight: 'Consistently high control rate maintained',
        ),
      ];

      Logger.info(
        'Fetched ${trends.length} health trends',
        tag: 'PopulationHealthDatasource',
      );
      return trends;
    } catch (e) {
      Logger.error(
        'Error fetching health trends',
        tag: 'PopulationHealthDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch adherence cohorts
  Future<List<AdherenceCohortModel>> fetchAdherenceCohorts() async {
    try {
      Logger.info(
        'Fetching adherence cohorts',
        tag: 'PopulationHealthDatasource',
      );

      await Future.delayed(Duration(milliseconds: 700));

      final cohorts = [
        AdherenceCohortModel(
          id: 'AC001',
          cohortName: 'Diabetic Patients',
          diseaseType: 'Type 2 Diabetes',
          totalPatients: 1900,
          excellentAdherence: 580,
          goodAdherence: 820,
          fairAdherence: 380,
          poorAdherence: 120,
          avgAdherenceRate: 76.5,
          hospitalizationRate: 6.2,
          costPerPatient: 45000.0,
          interventionsActive: [
            'Medication Reminders',
            'Blood Glucose Monitoring',
            'Dietary Counseling',
          ],
        ),
        AdherenceCohortModel(
          id: 'AC002',
          cohortName: 'Hypertensive Patients',
          diseaseType: 'Hypertension',
          totalPatients: 2200,
          excellentAdherence: 880,
          goodAdherence: 990,
          fairAdherence: 264,
          poorAdherence: 66,
          avgAdherenceRate: 82.0,
          hospitalizationRate: 4.5,
          costPerPatient: 28000.0,
          interventionsActive: [
            'BP Monitoring',
            'Salt Intake Control',
            'Exercise Programs',
          ],
        ),
        AdherenceCohortModel(
          id: 'AC003',
          cohortName: 'Cardiac Patients',
          diseaseType: 'CAD',
          totalPatients: 700,
          excellentAdherence: 280,
          goodAdherence: 280,
          fairAdherence: 105,
          poorAdherence: 35,
          avgAdherenceRate: 71.4,
          hospitalizationRate: 12.5,
          costPerPatient: 85000.0,
          interventionsActive: [
            'Cardiac Rehab',
            'Medication Adherence',
            'Lifestyle Modification',
          ],
        ),
      ];

      Logger.info(
        'Fetched ${cohorts.length} adherence cohorts',
        tag: 'PopulationHealthDatasource',
      );
      return cohorts;
    } catch (e) {
      Logger.error(
        'Error fetching adherence cohorts',
        tag: 'PopulationHealthDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch risk segmentation
  Future<List<RiskSegmentationModel>> fetchRiskSegmentation() async {
    try {
      Logger.info(
        'Fetching risk segmentation',
        tag: 'PopulationHealthDatasource',
      );

      await Future.delayed(Duration(milliseconds: 500));

      final segments = [
        RiskSegmentationModel(
          id: 'RS001',
          segmentName: 'Low Risk',
          population: 6200,
          populationPercentage: 62.0,
          riskLevel: 'Low',
          avgRiskScore: 28.5,
          estimatedAnnualCost: 15000.0,
          potentialSavings: 2000.0,
          activeInterventions: 120,
          topConditions: ['General Wellness', 'Preventive Care'],
          recommendedAction: 'Maintain preventive monitoring',
        ),
        RiskSegmentationModel(
          id: 'RS002',
          segmentName: 'Moderate Risk',
          population: 2700,
          populationPercentage: 27.0,
          riskLevel: 'Moderate',
          avgRiskScore: 52.8,
          estimatedAnnualCost: 35000.0,
          potentialSavings: 8000.0,
          activeInterventions: 280,
          topConditions: ['Hypertension', 'Pre-Diabetes'],
          recommendedAction: 'Increase intervention frequency',
        ),
        RiskSegmentationModel(
          id: 'RS003',
          segmentName: 'High Risk',
          population: 850,
          populationPercentage: 8.5,
          riskLevel: 'High',
          avgRiskScore: 72.5,
          estimatedAnnualCost: 75000.0,
          potentialSavings: 18000.0,
          activeInterventions: 185,
          topConditions: ['Diabetes', 'CAD', 'COPD'],
          recommendedAction: 'Weekly monitoring and care coordination',
        ),
        RiskSegmentationModel(
          id: 'RS004',
          segmentName: 'Critical Risk',
          population: 250,
          populationPercentage: 2.5,
          riskLevel: 'Critical',
          avgRiskScore: 88.2,
          estimatedAnnualCost: 150000.0,
          potentialSavings: 35000.0,
          activeInterventions: 98,
          topConditions: ['Multiple Chronic', 'Cardiac', 'CKD'],
          recommendedAction: 'Daily monitoring and intensive case management',
        ),
      ];

      Logger.info(
        'Fetched ${segments.length} risk segments',
        tag: 'PopulationHealthDatasource',
      );
      return segments;
    } catch (e) {
      Logger.error(
        'Error fetching risk segmentation',
        tag: 'PopulationHealthDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
