import '/flutter_flow/flutter_flow_util.dart';
import 'prescription_uploader_widget.dart' show PrescriptionUploaderWidget;
import 'package:flutter/material.dart';

class PrescriptionUploaderModel
    extends FlutterFlowModel<PrescriptionUploaderWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
