import 'package:package_info_plus/package_info_plus.dart';
import '../../../../core/utils/logger.dart';
import '../models/legal_document_model.dart';
import '../models/app_info_model.dart';

class LegalDatasource {
  // Fetch Privacy Policy
  Future<LegalDocumentModel> fetchPrivacyPolicy() async {
    try {
      Logger.info('Fetching privacy policy', tag: 'LegalDatasource');

      await Future.delayed(Duration(milliseconds: 300));

      final doc = LegalDocumentModel(
        id: 'privacy-policy',
        title: 'Privacy Policy',
        content: 'Complete privacy policy content',
        lastUpdated: DateTime(2024, 1, 15),
        version: '2.0',
        sections: [
          LegalSectionModel(
            id: 'introduction',
            title: '1. Introduction',
            content:
                'At Star Health Insurance and AltheaCare, we are committed to protecting your privacy and ensuring the security of your personal and health information. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our care coordination platform.',
          ),
          LegalSectionModel(
            id: 'information-we-collect',
            title: '2. Information We Collect',
            content:
                'We collect various types of information to provide and improve our services:',
            bulletPoints: [
              'Personal Information: Name, email address, phone number, date of birth, address',
              'Health Information: Medical records, diagnoses, medications, test results, treatment history',
              'Insurance Information: Policy details, claim history, coverage information',
              'Device Information: IP address, browser type, operating system, device identifiers',
              'Usage Data: Pages visited, features used, time spent, interaction patterns',
              'Location Data: Geographic location for service delivery and network optimization',
              'Biometric Data: For identity verification and fraud prevention (with consent)',
              'IoT Sensor Data: Wearable device data for health monitoring (with consent)',
            ],
          ),
          LegalSectionModel(
            id: 'how-we-use-information',
            title: '3. How We Use Your Information',
            content: 'We use collected information for the following purposes:',
            bulletPoints: [
              'Provide, maintain, and improve our care coordination services',
              'Process insurance claims and verify coverage',
              'Detect, prevent, and investigate fraudulent activities',
              'Monitor patient safety and health outcomes',
              'Send emergency alerts and critical health notifications',
              'Provide personalized care recommendations',
              'Analyze population health trends and risk factors',
              'Comply with legal and regulatory requirements',
              'Communicate with you about services, updates, and support',
              'Conduct research and analytics to improve healthcare delivery',
            ],
          ),
          LegalSectionModel(
            id: 'information-sharing',
            title: '4. Information Sharing and Disclosure',
            content:
                'We may share your information in the following circumstances:',
            bulletPoints: [
              'Healthcare Providers: To facilitate care coordination and treatment',
              'Insurance Companies: To process claims and verify coverage',
              'Emergency Services: In case of medical emergencies',
              'Service Providers: Third-party vendors who assist in service delivery',
              'Legal Authorities: When required by law or court order',
              'Business Partners: With your explicit consent for specific purposes',
              'Research Institutions: Anonymized data for medical research (opt-in)',
            ],
          ),
          LegalSectionModel(
            id: 'data-security',
            title: '5. Data Security',
            content:
                'We implement robust security measures to protect your information:',
            bulletPoints: [
              'End-to-end encryption for data transmission (TLS 1.3)',
              'AES-256 encryption for data at rest',
              'Multi-factor authentication for user access',
              'Regular security audits and vulnerability assessments',
              'ISO 27001 certified data centers',
              'HIPAA compliant data handling procedures',
              'Role-based access controls and audit logs',
              'Regular employee security training',
              'Incident response and breach notification procedures',
            ],
          ),
          LegalSectionModel(
            id: 'your-rights',
            title: '6. Your Privacy Rights',
            content:
                'You have the following rights regarding your information:',
            bulletPoints: [
              'Access: Request copies of your personal and health data',
              'Correction: Request corrections to inaccurate information',
              'Deletion: Request deletion of your data (subject to legal requirements)',
              'Portability: Receive your data in a structured, machine-readable format',
              'Opt-out: Decline certain uses of your information',
              'Revoke Consent: Withdraw consent for data processing',
              'Object: Object to processing based on legitimate interests',
              'Lodge Complaint: File complaints with data protection authorities',
            ],
          ),
          LegalSectionModel(
            id: 'data-retention',
            title: '7. Data Retention',
            content:
                'We retain your information for as long as necessary to provide services and comply with legal obligations:',
            bulletPoints: [
              'Active accounts: Data retained while account is active',
              'Medical records: Retained for 7 years as per regulations',
              'Financial records: Retained for 10 years as per tax laws',
              'Audit logs: Retained for 3 years',
              'Deleted accounts: Personal data deleted within 90 days (except legally required)',
            ],
          ),
          LegalSectionModel(
            id: 'cookies',
            title: '8. Cookies and Tracking Technologies',
            content:
                'We use cookies and similar technologies to enhance your experience:',
            bulletPoints: [
              'Essential cookies: Required for platform functionality',
              'Performance cookies: Help us understand usage patterns',
              'Functional cookies: Remember your preferences',
              'Analytics cookies: Measure and improve performance',
              'You can control cookies through browser settings',
            ],
          ),
          LegalSectionModel(
            id: 'children-privacy',
            title: '9. Children\'s Privacy',
            content:
                'Our services are not directed to children under 18 without parental consent. We comply with COPPA and similar regulations. Parents/guardians must provide consent for minors\' data processing.',
          ),
          LegalSectionModel(
            id: 'international-transfers',
            title: '10. International Data Transfers',
            content:
                'Your data may be transferred to and processed in countries outside India. We ensure adequate protection through:',
            bulletPoints: [
              'Standard contractual clauses',
              'Data processing agreements',
              'Adequacy decisions by regulatory authorities',
              'Explicit consent when required',
            ],
          ),
          LegalSectionModel(
            id: 'updates',
            title: '11. Changes to Privacy Policy',
            content:
                'We may update this Privacy Policy periodically. We will notify you of significant changes via email or platform notifications. Continued use after changes indicates acceptance.',
          ),
          LegalSectionModel(
            id: 'contact',
            title: '12. Contact Us',
            content:
                'For privacy-related questions or to exercise your rights, contact us:',
            bulletPoints: [
              'Email: privacy@altheacare.com',
              'Phone: +91 1800-XXX-XXXX',
              'Address: Star Health Insurance, Chennai, Tamil Nadu, India',
              'Data Protection Officer: dpo@altheacare.com',
            ],
          ),
        ],
      );

      Logger.info('Fetched privacy policy', tag: 'LegalDatasource');
      return doc;
    } catch (e) {
      Logger.error(
        'Error fetching privacy policy',
        tag: 'LegalDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch Terms of Service
  Future<LegalDocumentModel> fetchTermsOfService() async {
    try {
      Logger.info('Fetching terms of service', tag: 'LegalDatasource');

      await Future.delayed(Duration(milliseconds: 300));

      final doc = LegalDocumentModel(
        id: 'terms-of-service',
        title: 'Terms of Service',
        content: 'Complete terms of service content',
        lastUpdated: DateTime(2024, 1, 15),
        version: '2.0',
        sections: [
          LegalSectionModel(
            id: 'acceptance',
            title: '1. Acceptance of Terms',
            content:
                'By accessing and using the AltheaCare platform ("Service"), you accept and agree to be bound by these Terms of Service. If you do not agree, please do not use our Service.',
          ),
          LegalSectionModel(
            id: 'description',
            title: '2. Service Description',
            content:
                'AltheaCare is a comprehensive care coordination platform provided by Star Health Insurance that offers:',
            bulletPoints: [
              'Real-time health monitoring and alerts',
              'Emergency triage and response coordination',
              'Fraud detection and prevention',
              'Claims processing and verification',
              'Risk assessment and management',
              'Medication adherence tracking',
              'Population health analytics',
              'Provider network management',
            ],
          ),
          LegalSectionModel(
            id: 'user-accounts',
            title: '3. User Accounts and Registration',
            content: 'Account requirements and responsibilities:',
            bulletPoints: [
              'You must be 18 years or older (or have parental consent)',
              'Provide accurate, complete registration information',
              'Maintain the confidentiality of your account credentials',
              'Notify us immediately of any unauthorized access',
              'Accept responsibility for all activities under your account',
              'One person per account; sharing is prohibited',
              'We reserve the right to suspend or terminate accounts',
            ],
          ),
          LegalSectionModel(
            id: 'acceptable-use',
            title: '4. Acceptable Use Policy',
            content: 'You agree NOT to:',
            bulletPoints: [
              'Violate any laws or regulations',
              'Infringe on intellectual property rights',
              'Upload malicious code or viruses',
              'Attempt to gain unauthorized access',
              'Interfere with service operation',
              'Harass, abuse, or harm others',
              'Submit false or fraudulent information',
              'Use automated systems (bots, scrapers) without permission',
              'Reverse engineer or decompile the platform',
              'Resell or redistribute our services',
            ],
          ),
          LegalSectionModel(
            id: 'medical-disclaimer',
            title: '5. Medical Disclaimer',
            content: 'Important medical information:',
            bulletPoints: [
              'AltheaCare is a coordination tool, not medical advice',
              'Always consult licensed healthcare professionals',
              'Emergency alerts are supplementary, not replacement for 911/108',
              'We do not guarantee specific health outcomes',
              'Platform suggestions are informational only',
              'Users are responsible for medical decisions',
              'We are not liable for delayed or missed alerts',
            ],
          ),
          LegalSectionModel(
            id: 'intellectual-property',
            title: '6. Intellectual Property Rights',
            content:
                'All content, features, and functionality are owned by Star Health Insurance and protected by copyright, trademark, and other intellectual property laws. You may not:',
            bulletPoints: [
              'Copy, modify, or distribute our content',
              'Use our trademarks without permission',
              'Create derivative works',
              'Remove copyright or proprietary notices',
            ],
          ),
          LegalSectionModel(
            id: 'user-content',
            title: '7. User-Generated Content',
            content: 'You retain ownership of content you submit but grant us:',
            bulletPoints: [
              'A worldwide, non-exclusive license to use, store, and process your content',
              'Right to use anonymized data for analytics and improvement',
              'You represent you have rights to submitted content',
              'We may remove content that violates these terms',
              'We are not responsible for user-generated content',
            ],
          ),
          LegalSectionModel(
            id: 'payment-terms',
            title: '8. Payment and Subscription',
            content: 'Financial terms:',
            bulletPoints: [
              'Service provided as part of insurance coverage',
              'Additional premium features may require payment',
              'Prices subject to change with notice',
              'Refunds subject to insurance policy terms',
              'Late payments may result in service suspension',
            ],
          ),
          LegalSectionModel(
            id: 'termination',
            title: '9. Termination',
            content:
                'We may terminate or suspend access immediately, without notice, for:',
            bulletPoints: [
              'Violation of these Terms',
              'Fraudulent activity',
              'Policy cancellation',
              'Request from legal authorities',
              'Extended inactivity (after notice)',
            ],
          ),
          LegalSectionModel(
            id: 'limitations',
            title: '10. Limitation of Liability',
            content:
                'To the maximum extent permitted by law, Star Health Insurance shall not be liable for:',
            bulletPoints: [
              'Indirect, incidental, or consequential damages',
              'Loss of profits, data, or goodwill',
              'Service interruptions or errors',
              'Third-party content or services',
              'Acts of God, force majeure events',
              'Total liability limited to fees paid in past 12 months',
            ],
          ),
          LegalSectionModel(
            id: 'warranties',
            title: '11. Disclaimers and Warranties',
            content:
                'Service provided "AS IS" and "AS AVAILABLE" without warranties of any kind. We disclaim:',
            bulletPoints: [
              'Implied warranties of merchantability',
              'Fitness for particular purpose',
              'Non-infringement',
              'Accuracy, completeness, or reliability of content',
              'Uninterrupted or error-free operation',
            ],
          ),
          LegalSectionModel(
            id: 'indemnification',
            title: '12. Indemnification',
            content:
                'You agree to indemnify and hold harmless Star Health Insurance, its affiliates, officers, and employees from any claims, damages, losses arising from:',
            bulletPoints: [
              'Your use of the Service',
              'Violation of these Terms',
              'Infringement of third-party rights',
              'Your content submissions',
            ],
          ),
          LegalSectionModel(
            id: 'governing-law',
            title: '13. Governing Law and Jurisdiction',
            content:
                'These Terms are governed by the laws of India. Disputes shall be resolved in courts of Chennai, Tamil Nadu. Both parties consent to exclusive jurisdiction and venue.',
          ),
          LegalSectionModel(
            id: 'dispute-resolution',
            title: '14. Dispute Resolution',
            content: 'Dispute resolution process:',
            bulletPoints: [
              'Initial contact to support@altheacare.com',
              'Good faith negotiation (30 days)',
              'Mediation if negotiation fails',
              'Arbitration under Indian Arbitration Act',
              'Class action waiver applies',
            ],
          ),
          LegalSectionModel(
            id: 'modifications',
            title: '15. Modifications to Terms',
            content:
                'We reserve the right to modify these Terms at any time. Changes effective immediately upon posting. Continued use constitutes acceptance. Material changes will be communicated via email or platform notification.',
          ),
          LegalSectionModel(
            id: 'contact',
            title: '16. Contact Information',
            content: 'For questions about these Terms:',
            bulletPoints: [
              'Email: legal@altheacare.com',
              'Phone: +91 1800-XXX-XXXX',
              'Address: Star Health Insurance, Chennai, Tamil Nadu, India',
            ],
          ),
        ],
      );

      Logger.info('Fetched terms of service', tag: 'LegalDatasource');
      return doc;
    } catch (e) {
      Logger.error(
        'Error fetching terms of service',
        tag: 'LegalDatasource',
        error: e,
      );
      rethrow;
    }
  }

  // Fetch App Info
  Future<AppInfoModel> fetchAppInfo() async {
    try {
      Logger.info('Fetching app info', tag: 'LegalDatasource');

      await Future.delayed(Duration(milliseconds: 300));

      // Get real version info
      final packageInfo = await PackageInfo.fromPlatform();

      final appInfo = AppInfoModel(
        appName: 'AltheaCare',
        version: packageInfo.version,
        buildNumber: packageInfo.buildNumber,
        description:
            'AltheaCare is a comprehensive care coordination platform designed for Star Health Insurance. Our mission is to revolutionize healthcare delivery through intelligent technology, real-time monitoring, and proactive care management.',
        companyName: 'Star Health and Allied Insurance Co. Ltd.',
        companyWebsite: 'https://www.starhealth.in',
        supportEmail: 'support@altheacare.com',
        supportPhone: '+91 1800-XXX-XXXX',
        features: [
          'Real-Time Emergency Triage',
          'AI-Powered Fraud Detection',
          'Risk Assessment Engine',
          'Claims Prevention Analytics',
          'Network Readiness Monitor',
          'Population Health Intelligence',
          'Safety & Special Care Monitoring',
          'Medication Adherence Tracking',
          'Live Alert Center',
          'User Analytics Dashboard',
          'Comprehensive Help & Support',
        ],
        team: [
          TeamMemberModel(
            name: 'Rajesh Krishnan',
            role: 'Chief Technology Officer',
          ),
          TeamMemberModel(name: 'Priya Sharma', role: 'Product Manager'),
          TeamMemberModel(name: 'Amit Patel', role: 'Lead Developer'),
          TeamMemberModel(name: 'Sneha Reddy', role: 'UX/UI Designer'),
          TeamMemberModel(name: 'Dr. Arjun Mehta', role: 'Medical Advisor'),
        ],
        technologies: [
          TechnologyModel(
            name: 'Flutter',
            version: '3.24.5',
            description: 'Cross-platform UI framework',
          ),
          TechnologyModel(
            name: 'Riverpod',
            version: '2.6.1',
            description: 'State management',
          ),
          TechnologyModel(
            name: 'Go Router',
            version: '14.6.2',
            description: 'Navigation and routing',
          ),
          TechnologyModel(
            name: 'Freezed',
            version: '2.5.7',
            description: 'Code generation',
          ),
          TechnologyModel(
            name: 'Firebase',
            version: 'Latest',
            description: 'Backend services',
          ),
          TechnologyModel(
            name: 'TensorFlow Lite',
            version: '2.x',
            description: 'AI/ML inference',
          ),
        ],
        license: 'Proprietary - Star Health Insurance',
      );

      Logger.info('Fetched app info', tag: 'LegalDatasource');
      return appInfo;
    } catch (e) {
      Logger.error('Error fetching app info', tag: 'LegalDatasource', error: e);
      rethrow;
    }
  }
}
