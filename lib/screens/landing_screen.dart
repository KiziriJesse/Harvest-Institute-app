// lib/screens/landing_screen.dart
import 'package:flutter/material.dart';
import 'school_leadership_screen.dart';
import 'school_business_screen.dart';
import 'school_tech_screen.dart';
import 'course_ai_business.dart';
import 'course_backend.dart';
import 'course_data_analytics.dart';
import 'course_frontend.dart';
import 'course_mobile_app.dart';
import 'course_leadership_governance.dart';
import 'course_sales_markets.dart';
import 'course_people_teams.dart';
import 'course_finances_taxation.dart';
import 'sign_in_screen.dart';
import 'package:harvest_institute_mobile_app/screens/create_account_screen.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryBlue = const Color(0xFF1E88E5);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: primaryBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/hi-icon.png',
                  width: 29,
                  height: 29,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Harvest Institute',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SignInScreen()),
              );
            },

            icon: const Icon(Icons.login, color: Colors.blue),
            label: const Text('Sign In', style: TextStyle(color: Colors.blue)),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bordered section with schools
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1.2),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/school-of-leadership-2024.jpg',
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Raising skilled laborers for end-time Harvest',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Turn Your Calling Into Competence. Whether you're called to lead a church, build a business, or solve problems through technology, Harvest Institute gives you the Biblical foundation and practical skills to succeed.",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  const SizedBox(height: 16),

                  // School cards (tappable)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade50,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SchoolLeadershipScreen(),
                            ),
                          ),
                          child: const _SchoolCard(
                            imageUrl: 'assets/images/leadership.webp',
                            title: 'School of Leadership and Ministry',
                            subtitle:
                                'Grow in spiritual depth and pastoral leadership.',
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SchoolBusinessScreen(),
                            ),
                          ),
                          child: const _SchoolCard(
                            imageUrl: 'assets/images/business.webp',
                            title: 'School of Practical Business',
                            subtitle:
                                'Learn practical systems to build ethical ventures.',
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SchoolTechScreen(),
                            ),
                          ),
                          child: const _SchoolCard(
                            imageUrl: 'assets/images/technology.webp',
                            title: 'School of Tech',
                            subtitle:
                                'Master in-demand skills for a digital future.',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Top courses (Tech) — tappable course cards
            const TopCoursesSectionTech(),

            const SizedBox(height: 24),

            // Top courses (Business)
            const TopCoursesSectionBusiness(),

            const SizedBox(height: 24),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignInScreen()),
                      );
                    },

                    icon: const Icon(Icons.login),
                    label: const Text('Sign In'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade50,
                      foregroundColor: primaryBlue,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const CreateAccountScreen()),
  );
},

                    icon: const Icon(Icons.person_add_alt),
                    label: const Text('Create Account'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryBlue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),
            const Center(
              child: Text(
                'Harvest blue gradient, clear visuals, focused onboarding.',
                style: TextStyle(color: Colors.black45, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// School card widget (unchanged layout)
class _SchoolCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const _SchoolCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF1E88E5),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20),
            ),
            child: Image.asset(
              imageUrl,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 11.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Top courses (Tech) — tapping each route to its detail screen
class TopCoursesSectionTech extends StatelessWidget {
  const TopCoursesSectionTech({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Courses in School Of Tech',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CourseAiBusiness()),
                ),
                child: const _CourseCard(
                  title: 'AI for Business',
                  imageUrl: 'assets/images/ai_for_business.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CourseBackend()),
                ),
                child: const _CourseCard(
                  title: 'Backend Web Development',
                  imageUrl: 'assets/images/backend.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CourseDataAnalytics(),
                  ),
                ),
                child: const _CourseCard(
                  title: 'Data Analytics',
                  imageUrl: 'assets/images/data_analytics.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CourseFrontend()),
                ),
                child: const _CourseCard(
                  title: 'Frontend Web Development',
                  imageUrl: 'assets/images/frontend.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CourseMobileApp()),
                ),
                child: const _CourseCard(
                  title: 'Mobile App Development (Flutter)',
                  imageUrl: 'assets/images/mobile_app.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Top courses (Business)
class TopCoursesSectionBusiness extends StatelessWidget {
  const TopCoursesSectionBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Courses in School Of Practical Business',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CourseLeadershipGovernance(),
                  ),
                ),
                child: const _CourseCard(
                  title: 'Leadership & Governance',
                  imageUrl: 'assets/images/leadership.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CourseSalesMarkets()),
                ),
                child: const _CourseCard(
                  title: 'Sales & Markets',
                  imageUrl: 'assets/images/sales.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CoursePeopleTeams()),
                ),
                child: const _CourseCard(
                  title: 'People & Teams',
                  imageUrl: 'assets/images/teams.png',
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CourseFinancesTaxation(),
                  ),
                ),
                child: const _CourseCard(
                  title: 'Finances and Taxation',
                  imageUrl: 'assets/images/finances.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Course card: fixed height so every card is equal
class _CourseCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const _CourseCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 150, // fixed height to keep all cards uniform
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.12),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imageUrl,
              height: 90,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
