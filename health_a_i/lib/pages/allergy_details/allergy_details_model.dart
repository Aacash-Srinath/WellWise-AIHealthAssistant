import '/components/allergies_selection_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'allergy_details_widget.dart' show AllergyDetailsWidget;
import 'package:flutter/material.dart';

class AllergyDetailsModel extends FlutterFlowModel<AllergyDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AllergiesSelection component.
  late AllergiesSelectionModel allergiesSelectionModel;

  @override
  void initState(BuildContext context) {
    allergiesSelectionModel =
        createModel(context, () => AllergiesSelectionModel());
  }

  @override
  void dispose() {
    allergiesSelectionModel.dispose();
  }
}
