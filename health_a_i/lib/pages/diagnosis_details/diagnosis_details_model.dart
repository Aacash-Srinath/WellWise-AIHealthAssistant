import '/components/illness_selection_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diagnosis_details_widget.dart' show DiagnosisDetailsWidget;
import 'package:flutter/material.dart';

class DiagnosisDetailsModel extends FlutterFlowModel<DiagnosisDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for IllnessSelection component.
  late IllnessSelectionModel illnessSelectionModel;

  @override
  void initState(BuildContext context) {
    illnessSelectionModel = createModel(context, () => IllnessSelectionModel());
  }

  @override
  void dispose() {
    illnessSelectionModel.dispose();
  }
}
