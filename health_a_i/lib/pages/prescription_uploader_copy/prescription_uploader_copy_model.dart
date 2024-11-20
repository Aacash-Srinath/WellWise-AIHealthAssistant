import '/flutter_flow/flutter_flow_util.dart';
import 'prescription_uploader_copy_widget.dart'
    show PrescriptionUploaderCopyWidget;
import 'package:flutter/material.dart';

class PrescriptionUploaderCopyModel
    extends FlutterFlowModel<PrescriptionUploaderCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in Button widget.
  String? mealPlan;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
