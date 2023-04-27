import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AdminAddUserModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtEmailSignin widget.
  TextEditingController? txtEmailSigninController;
  String? Function(BuildContext, String?)? txtEmailSigninControllerValidator;
  // State field(s) for txtUidSignin widget.
  TextEditingController? txtUidSigninController;
  String? Function(BuildContext, String?)? txtUidSigninControllerValidator;
  // State field(s) for ddRolUsuario widget.
  String? ddRolUsuarioValue;
  FormFieldController<String>? ddRolUsuarioValueController;
  // State field(s) for txtDisplayNameSignin widget.
  TextEditingController? txtDisplayNameSigninController;
  String? Function(BuildContext, String?)?
      txtDisplayNameSigninControllerValidator;
  // State field(s) for txtPhoneNumber widget.
  TextEditingController? txtPhoneNumberController;
  String? Function(BuildContext, String?)? txtPhoneNumberControllerValidator;
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
    txtPassSigninVisibility = false;
    txtVfyPassSigninVisibility = false;
  }

  void dispose() {
    txtEmailSigninController?.dispose();
    txtUidSigninController?.dispose();
    txtDisplayNameSigninController?.dispose();
    txtPhoneNumberController?.dispose();
    txtPassSigninController?.dispose();
    txtVfyPassSigninController?.dispose();
  }

  /// Additional helper methods are added here.

}
