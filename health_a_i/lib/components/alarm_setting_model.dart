import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'alarm_setting_widget.dart' show AlarmSettingWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlarmSettingModel extends FlutterFlowModel<AlarmSettingWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Custom Action - setAlarm] action in Switch widget.
  int? alarmID;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
