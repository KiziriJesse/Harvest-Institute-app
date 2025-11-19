import 'package:flutter/material.dart';
import 'sign_in_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  static const String routeName = "/create-account";

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final Color primaryBlue = const Color(0xFF1E88E5);

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: primaryBlue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      "Create a Harvest Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  "Register to access your dashboard, courses & updates.",
                  style: TextStyle(color: Colors.black45, fontSize: 13),
                ),

                const SizedBox(height: 24),

                // Full Name
                const Text("Full Name", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                _buildField(
                  controller: fullNameController, 
                  hint: "John Doe", 
                  icon: Icons.person_outline
                ),

                const SizedBox(height: 20),

                // Email
                const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                _buildField(
                  controller: emailController,
                  hint: "name@school.edu",
                  icon: Icons.email_outlined,
                ),

                const SizedBox(height: 20),

                // Password
                const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                _buildField(
                  controller: passwordController,
                  hint: "Enter password",
                  icon: Icons.lock_outline,
                  isPassword: true,
                ),

                const SizedBox(height: 20),

                // Confirm Password
                const Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                _buildField(
                  controller: confirmPasswordController,
                  hint: "Re-enter password",
                  icon: Icons.lock_open_outlined,
                  isPassword: true,
                ),

                const SizedBox(height: 30),

                // CREATE ACCOUNT button
                GestureDetector(
                  onTap: () {
                    // later: connect Firebase sign-up
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade900,
                          primaryBlue,
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 16, 
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Already have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?", style: TextStyle(color: Colors.black54)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const SignInScreen()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: primaryBlue, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black54),
        hintText: hint,
        filled: true,
        fillColor: Colors.blue.shade50.withOpacity(0.4),
        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
