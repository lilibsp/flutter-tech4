import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrarevento_widget.dart' show CadastrareventoWidget;
import 'package:flutter/material.dart';

class CadastrareventoModel extends FlutterFlowModel<CadastrareventoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtevento widget.
  FocusNode? txteventoFocusNode;
  TextEditingController? txteventoTextController;
  String? Function(BuildContext, String?)? txteventoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txteventoFocusNode?.dispose();
    txteventoTextController?.dispose();
  }
}
