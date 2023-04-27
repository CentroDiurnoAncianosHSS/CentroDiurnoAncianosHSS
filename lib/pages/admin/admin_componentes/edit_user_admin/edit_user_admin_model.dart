import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditUserAdminModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtIdentificacionEditarAdmin widget.
  TextEditingController? txtIdentificacionEditarAdminController;
  String? Function(BuildContext, String?)?
      txtIdentificacionEditarAdminControllerValidator;
  // State field(s) for txtNombreUsuarioEditarAdmin widget.
  TextEditingController? txtNombreUsuarioEditarAdminController;
  String? Function(BuildContext, String?)?
      txtNombreUsuarioEditarAdminControllerValidator;
  // State field(s) for txtTelefonoEditarAdmin widget.
  TextEditingController? txtTelefonoEditarAdminController;
  String? Function(BuildContext, String?)?
      txtTelefonoEditarAdminControllerValidator;
  // State field(s) for ddRolUsuario widget.
  String? ddRolUsuarioValue;
  FormFieldController<String>? ddRolUsuarioValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtIdentificacionEditarAdminController?.dispose();
    txtNombreUsuarioEditarAdminController?.dispose();
    txtTelefonoEditarAdminController?.dispose();
  }

  /// Additional helper methods are added here.

}
