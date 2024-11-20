import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'allergies_selection_model.dart';
export 'allergies_selection_model.dart';

class AllergiesSelectionWidget extends StatefulWidget {
  const AllergiesSelectionWidget({super.key});

  @override
  State<AllergiesSelectionWidget> createState() =>
      _AllergiesSelectionWidgetState();
}

class _AllergiesSelectionWidgetState extends State<AllergiesSelectionWidget> {
  late AllergiesSelectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllergiesSelectionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Your Allergies',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Choose all that apply to ensure safe meal recommendations.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowChoiceChips(
                  key: const ValueKey('allergiesList'),
                  options: const [
                    ChipData('Peanuts'),
                    ChipData('Tree Nuts'),
                    ChipData('Milk'),
                    ChipData('Eggs'),
                    ChipData('Fish'),
                    ChipData('Shellfish'),
                    ChipData('Soy'),
                    ChipData('Wheat'),
                    ChipData('Sesame'),
                    ChipData('Others'),
                    ChipData('None')
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.choiceChipsValues = val),
                  selectedChipStyle: ChipStyle(
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                    iconColor: FlutterFlowTheme.of(context).info,
                    iconSize: 18.0,
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    iconSize: 18.0,
                    elevation: 0.0,
                    borderColor: const Color(0xFFB5B5B5),
                    borderWidth: 1.0,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  chipSpacing: 8.0,
                  rowSpacing: 12.0,
                  multiselect: true,
                  initialized: _model.choiceChipsValues != null,
                  alignment: WrapAlignment.spaceEvenly,
                  controller: _model.choiceChipsValueController ??=
                      FormFieldController<List<String>>(
                    ['None'],
                  ),
                  wrapped: true,
                ),
              ),
              Text(
                'Your selection helps us customize your meal plans and recipe suggestions.',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
