import 'package:flutter/material.dart';

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
              // TODO: Navigate to Sign In
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
            // === OUTER BORDERED SECTION ===
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1.2),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // === TOP IMAGE ===
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

                  // === DESCRIPTION ===
                  const Text(
                    'Raising skilled laborers',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Turn Your Calling Into Competence. Whether you're called to lead a church, build a business, or solve problems through technology, Harvest Institute gives you the Biblical foundation and practical skills to succeed. Join East Africa's premier leadership development program.",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  const SizedBox(height: 16),

                  // === SCHOOL CARDS INSIDE BORDER ===
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade50,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: const [
                        _SchoolCard(
                          imageUrl: 'assets/images/leadership.webp',
                          title: 'School of Leadership and Ministry',
                          subtitle:
                              'Grow in spiritual depth and pastoral leadership.',
                        ),
                        _SchoolCard(
                          imageUrl: 'assets/images/business.webp',
                          title: 'School of Practical Business',
                          subtitle:
                              'Learn practical systems to build ethical ventures.',
                        ),
                        _SchoolCard(
                          imageUrl: 'assets/images/technology.webp',
                          title: 'School of Tech',
                          subtitle:
                              'Master in-demand skills for a digital future.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // === NEW TOP COURSES SECTION ADDED HERE ===
            const TopCoursesSection(),
            const SizedBox(height: 24),

            // === BUTTONS ===
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Navigate to Sign In
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
                      // TODO: Navigate to Create Account
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

// ========================================
// EXISTING SCHOOL CARD (UNTOUCHED)
// ========================================
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

// ========================================
// NEW TOP COURSES SECTION
// ========================================
class TopCoursesSection extends StatelessWidget {
  const TopCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Courses in Harvest Institute',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        // Horizontal courses
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              _CourseCard(
                title: 'AI for Business',
                imageUrl: 'assets/images/course1.jpg',
              ),
              _CourseCard(
                title: 'Backend Web Development',
                imageUrl: 'assets/images/course2.jpg',
              ),
              _CourseCard(
                title: 'Data Analytics',
                imageUrl: 'assets/images/course3.jpg',
              ),
              _CourseCard(
                title: 'Frontend Web Development',
                imageUrl: 'assets/images/course4.jpg',
              ),
              _CourseCard(
                title: 'Mobile App Development (Flutter)',
                imageUrl: 'assets/images/course5.jpg',
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        const Text(
          'Categories',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: const [
            _CategoryChip(label: 'AI & Data'),
            _CategoryChip(label: 'Web Development'),
            _CategoryChip(label: 'Mobile Development'),
            _CategoryChip(label: 'Digital Marketing'),
            _CategoryChip(label: 'Project Management'),
            _CategoryChip(label: 'UI/UX Design'),
            _CategoryChip(label: 'Beginner Courses'),
          ],
        ),
      ],
    );
  }
}

// ========================================
// COURSE CARD
// ========================================
class _CourseCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const _CourseCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// ========================================
// CATEGORY CHIP
// ========================================
class _CategoryChip extends StatelessWidget {
  final String label;

  const _CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey.shade200,
      labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    );
  }
}
