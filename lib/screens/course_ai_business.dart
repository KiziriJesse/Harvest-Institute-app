import 'package:flutter/material.dart';
import 'package:harvest_institute_mobile_app/screens/enrollment_webview_screen.dart';

class CourseAiBusiness extends StatelessWidget {
  static const String routeName = '/course-ai-business';
  static const Color primaryBlue = Color.fromARGB(255, 0, 0, 0);
  static const Color enrollButtonColor = Color(0xFF1E88E5);
  static const String enrollmentUrl = 'https://docs.google.com/forms/d/e/1FAIpQLSfTGGUKwxJXJVrjJ3R1pFFOW91AnG6Afx3wE7wSJ2wBdoapJg/closedform';

  const CourseAiBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Change 1: Set background to white
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text(
          'AI for Business',
          style: TextStyle(
            // Change 2: Set title color to primary blue
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
                'assets/images/ai_for_business.png',
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),

            // Change 3: Wrap all content except the button in a rounded container
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
                    'This course is designed to equip business professionals with the knowledge and tools to effectively leverage Artificial Intelligence (AI) in their business operations, strategy, and decision-making processes.',
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
                  Text('- Introduction to AI and Machine Learning'),
                  Text('- AI Strategy and Adoption in Business'),
                  Text('- Using AI for Data Analysis and Predictions'),
                  Text('- Ethical Implications and Governance of AI'),
                  Text('- Hands-on AI tool implementation for efficiency'),
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