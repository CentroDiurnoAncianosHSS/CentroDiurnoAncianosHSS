import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtEmailLogin widget.
  TextEditingController? txtEmailLoginController;
  String? Function(BuildContext, String?)? txtEmailLoginControllerValidator;
  // State field(s) for txtPassLogin widget.
  TextEditingController? txtPassLoginController;
  late bool txtPassLoginVisibility;
  String? Function(BuildContext, String?)? txtPassLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtPassLoginVisibility = false;
  }

  void dispose() {
    txtEmailLoginController?.dispose();
    txtPassLoginController?.dispose();
  }

  /// Additional helper methods are added here.

}
