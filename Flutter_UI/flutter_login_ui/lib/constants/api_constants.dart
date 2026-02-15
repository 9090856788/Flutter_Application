/// API-related constants (base URL, endpoints, headers).
/// Replace `baseUrl` with your real backend URL in production.
class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://api.example.com';

  // Common endpoints
  static const String login = '/auth/login';
  static const String signup = '/auth/signup';
  static const String userProfile = '/user/profile';

  // Default headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Timeouts
  static const int timeoutSeconds = 30;
}
