import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_otp_verification.g.dart';

class LoginOtpVerification {
  final  txtHeading = "OTP Verification";
  final  txtSubHeading =
      "Enter the verification code we just sent to your number +91 *******21.";
  final  verifyOtpBtn = "Verify OTP";
}

@riverpod
LoginOtpVerification loginOtpVerification(LoginOtpVerificationRef ref) {
  return LoginOtpVerification();
}