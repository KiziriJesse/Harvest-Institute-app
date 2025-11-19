import 'package:flutter/material.dart';
import 'package:harvest_institute_mobile_app/screens/enrollment_webview_screen.dart';

class CourseLeadershipGovernance extends StatelessWidget {
  static const String routeName = '/course-leadership-governance';
  // primaryBlue is black, as provided by the user, and is used for titles/text
  static const Color primaryBlue = Color.fromARGB(255, 0, 0, 0); 
  // enrollButtonColor is the blue color requested for the button itself
  static const Color enrollButtonColor = Color(0xFF1E88E5); 
  static const String enrollmentUrl = 'https://docs.google.com/forms/d/e/1FAIpQLSfTGGUKwxJXJVrjJ3R1pFFOW91AnG6Afx3wE7wSJ2wBdoapJg/closedform';

  const CourseLeadershipGovernance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background to white
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text(
          'Leadership & Governance',
          style: TextStyle(
            // Set title color to primary blue (black)
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
            // Image of the course
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/leadership.png',
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),

            // Wrap all content except the button in a rounded container
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
                children: const [
                  Text(
                    'Course Overview',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Develop the skills and principles required to lead organizations effectively, focusing on ethical governance, strategic decision-making, and organizational integrity.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Key Modules:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('- Strategic Leadership and Vision Casting'),
                  Text('- Corporate Governance and Compliance'),
                  Text('- Ethical Decision Making and Accountability'),
                  Text('- Crisis Management and Change Leadership'),
                  Text('- Board Relations and Stakeholder Engagement'),
                  SizedBox(height: 20),
                  
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // New small, centered button logic
            Center(
              child: SizedBox(
                // Constrained width for a smaller button
                width: 200, 
                child: ElevatedButton(
                  onPressed: () {
                    // Correct navigation logic using WebView screen
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EnrollmentWebViewScreen(
                          url: enrollmentUrl,
                          screenTitle: 'Enrollment Application',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // Using the requested blue color
                    backgroundColor: enrollButtonColor, 
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      // Pill shape
                      borderRadius: BorderRadius.circular(50), 
                    ),
                    foregroundColor: Colors.white, 
                  ),
                  child: const Text(
                    'Enroll Now', 
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
             const SizedBox(height: 20), 

          ],
        ),
      ),
    );
  }
}