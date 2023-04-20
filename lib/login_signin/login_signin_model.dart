import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoginSigninModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtEmailLogin widget.
  TextEditingController? txtEmailLoginController;
  String? Function(BuildContext, String?)? txtEmailLoginControllerValidator;
  // State field(s) for txtPassLogin widget.
  TextEditingController? txtPassLoginController;
  late bool txtPassLoginVisibility;
  String? Function(BuildContext, String?)? txtPassLoginControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtEmailSignin widget.
  TextEditingController? txtEmailSigninController;
  String? Function(BuildContext, String?)? txtEmailSigninControllerValidator;
  // State field(s) for txtDisplayNameSignin widget.
  TextEditingController? txtDisplayNameSigninController;
  String? Function(BuildContext, String?)?
      txtDisplayNameSigninControllerValidator;
  // State field(s) for txtPassSignin widget.
  TextEditingController? txtPassSigninController;
  late bool txtPassSigninVisibility;
  String? Function(BuildContext, String?)? txtPassSigninControllerValidator;
  // State field(s) for txtVfyPassSignin widget.
  TextEditingController? txtVfyPassSigninController;
  late bool txtVfyPassSigninVisibility;
  String? Function(BuildContext, String?)? txtVfyPassSigninControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtPassLoginVisibility = false;
    txtPassSigninVisibility = false;
    txtVfyPassSigninVisibility = false;
  }

  void dispose() {
    txtEmailLoginController?.dispose();
    txtPassLoginController?.dispose();
    txtEmailSigninController?.dispose();
    txtDisplayNameSigninController?.dispose();
    txtPassSigninController?.dispose();
    txtVfyPassSigninController?.dispose();
  }

  /// Additional helper methods are added here.

}
