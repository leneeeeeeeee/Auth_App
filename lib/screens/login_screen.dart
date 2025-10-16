import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import 'register_screen.dart';
import 'forgot_password_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

  class _LoginScreenState extends State<LoginScreen> {
    final AuthService _authService = AuthService();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool _isLoading = false;
    bool _obscurePassword = true;

    @override
  void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Icon(
                          Icons.lock_outline,
                          size: 80,
                          color: Colors.deepPurple,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Welcome Back',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         fontSize: 32,
                         fontWeight: FontWeight.bold,
                         color: Colors.deepPurple,
                       ),
                      ),
                      const SizedBox(height: 48),

                      TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: const Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                    ],
                  ),
              ),
            ),
          ),
        )
      );
  }


  }
