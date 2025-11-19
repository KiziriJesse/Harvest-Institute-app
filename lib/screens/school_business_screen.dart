import 'package:flutter/material.dart';
import 'package:harvest_institute_mobile_app/screens/enrollment_webview_screen.dart';
import 'package:harvest_institute_mobile_app/screens/course_finances_taxation.dart';
import 'package:harvest_institute_mobile_app/screens/course_ai_business.dart';
import 'package:harvest_institute_mobile_app/screens/course_people_teams.dart';
import 'package:harvest_institute_mobile_app/screens/course_sales_markets.dart';

class SchoolBusinessScreen extends StatelessWidget {
  static const String routeName = '/school-business';
  static const Color primaryBlue = Color(0xFF1E88E5);
  static const String enrollmentUrl = 'https://docs.google.com/forms/d/e/1FAIpQLSfTGGUKwxJXJVrjJ3R1pFFOW91AnG6Afx3wE7wSJ2wBdoapJg/closedform';

  const SchoolBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Change 2: Set background to white
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'School of Practical Business',
          style: TextStyle(
            // Change 1: Set title color to the new primary blue
            color: primaryBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: primaryBlue),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image for the School of Business
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/business.webp', 
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),

            // Change 4: Rounded border container for content
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'School Overview',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Keep text black
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'The Harvest Institute School of Practical Business focuses on developing strategic thinking, financial acumen, and effective organizational leadership for the modern competitive landscape.',
                    style: TextStyle(fontSize: 16, color: Colors.black), // Keep text black
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Programs Offered:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Keep text black
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildCourseTile(context, 'Finances & Taxation', CourseFinancesTaxation.routeName),
                  _buildCourseTile(context, 'Operations & Technology', CourseAiBusiness.routeName),
                  _buildCourseTile(context, 'People & Teams', CoursePeopleTeams.routeName),
                  _buildCourseTile(context, 'Sales & Markets', CourseSalesMarkets.routeName),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Enrollment Button (Change 1, 5, 6: New color, new link, preserved look)
            ElevatedButton(
              onPressed: () {
                // Change 5: Connect to the enrollment link in-app
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EnrollmentWebViewScreen(
                      url: enrollmentUrl,
                      screenTitle: 'Enrollment Application',
                    ),
                  ),
                );
              },
              // Change 6: Only apply the new primary color to the button background, 
              // preserving its existing shape and padding.
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryBlue, // Change 1: New color
                foregroundColor: Colors.white, // Text color should be white for contrast
              ),
              child: const Text(
                'Apply for School of Practical Business',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseTile(BuildContext context, String title, String routeName) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.arrow_right, color: primaryBlue),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
    );
  }
}