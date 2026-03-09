import '../../../../core/utils/logger.dart';
import '../models/faq_model.dart';
import '../models/help_article_model.dart';
import '../models/support_ticket_model.dart';

class HelpSupportDatasource {
  // Fetch FAQs
  Future<List<FAQModel>> fetchFAQs() async {
    try {
      Logger.info('Fetching FAQs', tag: 'HelpSupportDatasource');

      await Future.delayed(Duration(milliseconds: 500));

      final now = DateTime.now();
      final faqs = <FAQModel>[
        // General FAQs
        FAQModel(
          id: 'FAQ001',
          category: 'general',
          question: 'What is AltheaCare?',
          answer:
              'AltheaCare is a comprehensive care coordination platform designed for Star Health Insurance. It provides real-time monitoring, fraud detection, risk management, and patient safety features to improve healthcare outcomes and reduce costs.',
          tags: ['platform', 'overview', 'introduction'],
          helpfulCount: 45,
          notHelpfulCount: 2,
          updatedAt: now.subtract(Duration(days: 5)),
        ),
        FAQModel(
          id: 'FAQ002',
          category: 'general',
          question: 'How do I navigate the dashboard?',
          answer:
              'The dashboard is divided into several sections: Emergency Triage, Safety Monitoring, Fraud Detection, and Risk Analytics. Use the sidebar navigation to switch between features. Each section displays real-time data and actionable insights.',
          tags: ['dashboard', 'navigation', 'ui'],
          helpfulCount: 38,
          notHelpfulCount: 3,
          updatedAt: now.subtract(Duration(days: 10)),
        ),
        FAQModel(
          id: 'FAQ003',
          category: 'general',
          question: 'Can I customize my dashboard view?',
          answer:
              'Yes! Go to Settings > Appearance to customize your theme (Light/Dark/System), accent colors, and view preferences. You can also set up personalized notifications and filters for each feature.',
          tags: ['customization', 'settings', 'preferences'],
          helpfulCount: 52,
          notHelpfulCount: 1,
          updatedAt: now.subtract(Duration(days: 3)),
        ),

        // Alert FAQs
        FAQModel(
          id: 'FAQ004',
          category: 'alerts',
          question: 'What types of alerts does the system send?',
          answer:
              'The system sends 6 types of alerts: Emergency Alerts (cardiac, falls), Safety Alerts (maternal, infant), Fraud Alerts (duplicate claims, identity theft), Medication Alerts (adherence), Risk Escalation Alerts (hospitalization probability), and System Alerts (capacity, maintenance).',
          tags: ['alerts', 'notifications', 'types'],
          helpfulCount: 67,
          notHelpfulCount: 2,
          updatedAt: now.subtract(Duration(days: 2)),
        ),
        FAQModel(
          id: 'FAQ005',
          category: 'alerts',
          question: 'How do I configure quiet hours for alerts?',
          answer:
              'Go to Settings > Notifications > Quiet Hours. Enable quiet hours and set your preferred start time (e.g., 10:00 PM) and end time (e.g., 7:00 AM). Emergency alerts will still come through during quiet hours.',
          tags: ['alerts', 'notifications', 'quiet-hours'],
          helpfulCount: 41,
          notHelpfulCount: 4,
          updatedAt: now.subtract(Duration(days: 7)),
        ),
        FAQModel(
          id: 'FAQ006',
          category: 'alerts',
          question: 'What should I do when I receive an emergency alert?',
          answer:
              '1) Acknowledge the alert immediately, 2) Review patient vitals and location, 3) Contact the patient or emergency contact, 4) Dispatch ambulance if needed, 5) Document all actions taken. Response time is critical - aim for under 5 minutes.',
          tags: ['emergency', 'response', 'procedure'],
          helpfulCount: 89,
          notHelpfulCount: 1,
          updatedAt: now.subtract(Duration(days: 1)),
        ),

        // Fraud FAQs
        FAQModel(
          id: 'FAQ007',
          category: 'fraud',
          question: 'How does the fraud detection system work?',
          answer:
              'Our AI-powered system analyzes claims for 8 fraud types: duplicate claims, inflated billing, service mismatches, identity fraud, provider collusion, unnecessary services, billing manipulation, and location anomalies. It uses machine learning to detect patterns and assigns fraud probability scores.',
          tags: ['fraud', 'detection', 'ai'],
          helpfulCount: 73,
          notHelpfulCount: 5,
          updatedAt: now.subtract(Duration(days: 4)),
        ),
        FAQModel(
          id: 'FAQ008',
          category: 'fraud',
          question: 'What is the fraud probability score?',
          answer:
              'The fraud probability score (0-100%) indicates the likelihood that a claim is fraudulent. Scores above 80% are flagged as high risk. The score is calculated using multiple factors including claim patterns, provider history, patient verification, and geographic data.',
          tags: ['fraud', 'score', 'risk'],
          helpfulCount: 56,
          notHelpfulCount: 3,
          updatedAt: now.subtract(Duration(days: 6)),
        ),

        // Claims FAQs
        FAQModel(
          id: 'FAQ009',
          category: 'claims',
          question: 'How long does claim verification take?',
          answer:
              'Standard claims take 24-48 hours for full verification. High-value claims (>₹1 lakh) may take 3-5 days. Emergency claims are prioritized and verified within 4-6 hours. You can track verification progress in the Claims Prevention Analytics section.',
          tags: ['claims', 'verification', 'timeline'],
          helpfulCount: 64,
          notHelpfulCount: 8,
          updatedAt: now.subtract(Duration(days: 5)),
        ),
        FAQModel(
          id: 'FAQ010',
          category: 'claims',
          question: 'What are the 6 verification checks?',
          answer:
              'The 6 checks are: 1) Document Verification (insurance cards, prescriptions), 2) Service Validation (procedure codes match), 3) Price Validation (within benchmarks), 4) Provider Validation (licensed, network status), 5) Patient Validation (identity, eligibility), 6) Medical Necessity (clinically justified).',
          tags: ['claims', 'verification', 'checks'],
          helpfulCount: 92,
          notHelpfulCount: 2,
          updatedAt: now.subtract(Duration(days: 3)),
        ),

        // Patient FAQs
        FAQModel(
          id: 'FAQ011',
          category: 'patients',
          question: 'How do I view patient medication adherence?',
          answer:
              'Go to Medication Adherence Dashboard > Search for patient by name or ID. You\'ll see their adherence rate, missed doses, medication schedule, and risk factors. Click on a patient card for detailed adherence history and intervention recommendations.',
          tags: ['patients', 'medication', 'adherence'],
          helpfulCount: 48,
          notHelpfulCount: 4,
          updatedAt: now.subtract(Duration(days: 8)),
        ),
        FAQModel(
          id: 'FAQ012',
          category: 'patients',
          question: 'What is the risk score and how is it calculated?',
          answer:
              'The risk score (0-100) predicts hospitalization probability within 7 days. It\'s calculated using: chronic conditions, recent vitals, medication adherence, age, comorbidities, previous hospitalizations, and IoT sensor data. Scores above 80 trigger automatic interventions.',
          tags: ['risk', 'score', 'prediction'],
          helpfulCount: 81,
          notHelpfulCount: 6,
          updatedAt: now.subtract(Duration(days: 2)),
        ),

        // Technical FAQs
        FAQModel(
          id: 'FAQ013',
          category: 'technical',
          question: 'What browsers are supported?',
          answer:
              'AltheaCare supports the latest versions of Chrome, Firefox, Safari, and Edge. For optimal performance, we recommend Chrome. Mobile apps are available for iOS (14+) and Android (10+). Internet Explorer is not supported.',
          tags: ['technical', 'browser', 'compatibility'],
          helpfulCount: 34,
          notHelpfulCount: 2,
          updatedAt: now.subtract(Duration(days: 15)),
        ),
        FAQModel(
          id: 'FAQ014',
          category: 'technical',
          question: 'How do I export data for reports?',
          answer:
              'Each dashboard has an Export button (top-right). Choose your format (CSV, PDF, Excel), date range, and filters. Reports are generated within 2-5 minutes and sent to your email. You can also schedule automated daily/weekly reports in Settings > Data Export.',
          tags: ['export', 'reports', 'data'],
          helpfulCount: 59,
          notHelpfulCount: 7,
          updatedAt: now.subtract(Duration(days: 4)),
        ),
        FAQModel(
          id: 'FAQ015',
          category: 'technical',
          question: 'Is my data secure?',
          answer:
              'Yes. We use AES-256 encryption for data at rest and TLS 1.3 for data in transit. All data centers are ISO 27001 certified. We comply with HIPAA, GDPR, and India\'s IT Act. Two-factor authentication is mandatory for all users. Regular security audits are conducted quarterly.',
          tags: ['security', 'encryption', 'privacy'],
          helpfulCount: 156,
          notHelpfulCount: 3,
          updatedAt: now.subtract(Duration(days: 1)),
        ),
      ];

      Logger.info('Fetched ${faqs.length} FAQs', tag: 'HelpSupportDatasource');
      return faqs;
    } catch (e) {
      Logger.error(
        'Error fetching FAQs',
        tag: 'HelpSupportDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch help articles
  Future<List<HelpArticleModel>> fetchHelpArticles() async {
    try {
      Logger.info('Fetching help articles', tag: 'HelpSupportDatasource');

      await Future.delayed(Duration(milliseconds: 600));

      final now = DateTime.now();
      final articles = <HelpArticleModel>[
        HelpArticleModel(
          id: 'ART001',
          category: 'getting_started',
          title: 'Getting Started with AltheaCare',
          summary:
              'A comprehensive guide to help you get started with the AltheaCare platform.',
          content: '''# Getting Started with AltheaCare

Welcome to AltheaCare! This guide will help you navigate the platform and make the most of its features.

## Dashboard Overview
The main dashboard provides a real-time overview of all critical metrics including emergency alerts, fraud detection, and patient risk scores.

## Key Features
- **Emergency Triage**: Monitor and respond to critical health events
- **Fraud Detection**: AI-powered fraud analysis and prevention
- **Risk Engine**: Predictive analytics for patient outcomes
- **Medication Adherence**: Track and improve medication compliance

## Navigation
Use the sidebar to access different sections. Each section is color-coded for easy identification.

## Getting Help
If you need assistance, use the Help & Support center or contact our support team at support@altheacare.com.''',
          tags: ['getting-started', 'overview', 'tutorial'],
          readTime: 5,
          views: 1234,
          publishedAt: now.subtract(Duration(days: 30)),
          updatedAt: now.subtract(Duration(days: 5)),
        ),
        HelpArticleModel(
          id: 'ART002',
          category: 'features',
          title: 'Understanding the Live Alert Center',
          summary:
              'Learn how to effectively use the Live Alert Center for real-time monitoring.',
          content: '''# Understanding the Live Alert Center

The Live Alert Center aggregates all critical alerts from across the platform into a unified command center.

## Alert Categories
- Emergency Alerts (cardiac, falls)
- Safety Alerts (maternal, infant)
- Fraud Alerts (suspicious claims)
- Medication Alerts (adherence issues)
- Risk Escalation Alerts (hospitalization risk)
- System Alerts (capacity, maintenance)

## Priority Levels
Alerts are categorized into 5 priority levels:
1. **Emergency**: Requires immediate action
2. **Critical**: High importance, respond within 15 minutes
3. **High**: Important, respond within 1 hour
4. **Medium**: Standard priority
5. **Low**: Informational

## Response Workflow
1. Acknowledge alert
2. Assign to team member
3. Take action
4. Document resolution
5. Close alert

## Filtering and Search
Use filters to view specific alert types or search by patient name, provider, or keywords.''',
          tags: ['alerts', 'monitoring', 'features'],
          readTime: 8,
          views: 892,
          publishedAt: now.subtract(Duration(days: 25)),
          updatedAt: now.subtract(Duration(days: 3)),
        ),
        HelpArticleModel(
          id: 'ART003',
          category: 'best_practices',
          title: 'Best Practices for Fraud Detection',
          summary: 'Expert tips for maximizing fraud detection effectiveness.',
          content: '''# Best Practices for Fraud Detection

Learn how to effectively use AltheaCare's fraud detection system to prevent fraudulent claims.

## Daily Review Process
1. Check the Fraud Detection Console every morning
2. Review all critical and high-priority alerts
3. Investigate alerts with fraud probability >80%
4. Document findings in investigation cases

## Red Flags to Watch For
- Duplicate claims within 24 hours
- Claims exceeding regional benchmarks by >200%
- Biometric verification failures
- Geographic impossibilities
- Provider patterns (unusual billing spikes)

## Investigation Workflow
1. Review alert details and anomalies
2. Check provider history and patterns
3. Verify patient identity and eligibility
4. Examine medical records and documentation
5. Consult with medical experts if needed
6. Make decision (approve/reject/request more info)

## Collaboration
Work with your fraud investigation team. Use the case management system to share findings and coordinate efforts.

## Metrics to Track
- Fraud detection rate
- False positive rate
- Amount saved
- Average investigation time
- Recovery rate''',
          tags: ['fraud', 'best-practices', 'investigation'],
          readTime: 10,
          views: 756,
          publishedAt: now.subtract(Duration(days: 20)),
          updatedAt: now.subtract(Duration(days: 2)),
        ),
        HelpArticleModel(
          id: 'ART004',
          category: 'troubleshooting',
          title: 'Troubleshooting Common Issues',
          summary: 'Solutions to frequently encountered problems.',
          content: '''# Troubleshooting Common Issues

Quick solutions to common problems you might encounter.

## Login Issues
**Problem**: Can't log in
**Solution**:
- Verify username and password
- Check Caps Lock is off
- Clear browser cache and cookies
- Try incognito/private mode
- Contact IT support if issue persists

## Data Not Loading
**Problem**: Dashboard shows loading spinner indefinitely
**Solution**:
- Check internet connection
- Refresh the page (F5)
- Clear browser cache
- Try a different browser
- Check system status page

## Alert Notifications Not Working
**Problem**: Not receiving alert notifications
**Solution**:
- Go to Settings > Notifications
- Verify notification channels are enabled
- Check quiet hours settings
- Ensure browser notifications are allowed
- Verify email address is correct

## Performance Issues
**Problem**: Application is slow
**Solution**:
- Close unnecessary browser tabs
- Clear browser cache
- Disable browser extensions
- Update to latest browser version
- Contact support for server status

## Export Not Working
**Problem**: Data export fails or times out
**Solution**:
- Reduce date range
- Apply more filters to limit data
- Try exporting in smaller batches
- Use CSV instead of PDF for large datasets
- Schedule export during off-peak hours''',
          tags: ['troubleshooting', 'issues', 'solutions'],
          readTime: 7,
          views: 1089,
          publishedAt: now.subtract(Duration(days: 15)),
          updatedAt: now.subtract(Duration(days: 1)),
        ),
        HelpArticleModel(
          id: 'ART005',
          category: 'tutorials',
          title: 'Creating and Managing Investigation Cases',
          summary:
              'Step-by-step tutorial on fraud investigation case management.',
          content: '''# Creating and Managing Investigation Cases

Learn how to create, track, and resolve fraud investigation cases.

## Creating a New Case
1. Go to Fraud Detection Console
2. Click on a fraud alert
3. Click "Create Investigation Case"
4. Fill in case details:
   - Case title
   - Primary suspect
   - Related claims
   - Priority level
5. Click "Create Case"

## Adding Evidence
- Upload relevant documents
- Add screenshots
- Link related claims
- Document witness statements
- Record phone call notes

## Assigning Cases
- Click "Assign" button
- Select team member
- Add assignment notes
- Set deadline
- Send notification

## Updating Case Status
Navigate through workflow:
1. Open
2. Investigating
3. Evidence Gathering
4. Under Review
5. Closed

## Documenting Findings
- Record all investigation steps
- Note evidence collected
- Document interviews
- List red flags found
- Summarize conclusions

## Closing Cases
- Select outcome (Confirmed/Not Fraud/Partial)
- Document action taken
- Enter recovered amount
- Archive case
- Generate report''',
          tags: ['tutorial', 'investigation', 'cases'],
          readTime: 12,
          views: 623,
          publishedAt: now.subtract(Duration(days: 10)),
          updatedAt: now.subtract(Duration(days: 1)),
        ),
      ];

      Logger.info(
        'Fetched ${articles.length} help articles',
        tag: 'HelpSupportDatasource',
      );
      return articles;
    } catch (e) {
      Logger.error(
        'Error fetching help articles',
        tag: 'HelpSupportDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Submit support ticket
  Future<SupportTicketModel> submitSupportTicket({
    required String category,
    required String priority,
    required String subject,
    required String description,
    required String userEmail,
  }) async {
    try {
      Logger.info('Submitting support ticket', tag: 'HelpSupportDatasource');

      await Future.delayed(Duration(milliseconds: 1000));

      final now = DateTime.now();
      final ticketNumber = 'TICK${now.millisecondsSinceEpoch % 100000}';

      final ticket = SupportTicketModel(
        id: 'TKT${now.millisecondsSinceEpoch}',
        ticketNumber: ticketNumber,
        category: category,
        priority: priority,
        status: 'open',
        subject: subject,
        description: description,
        userEmail: userEmail,
        createdAt: now,
        resolvedAt: null,
        assignedTo: null,
        attachments: null,
      );

      Logger.info(
        'Support ticket created: $ticketNumber',
        tag: 'HelpSupportDatasource',
      );
      return ticket;
    } catch (e) {
      Logger.error(
        'Error submitting support ticket',
        tag: 'HelpSupportDatasource',
        error: e,
      );
      rethrow;
    }
  }
}
