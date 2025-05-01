import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_autenticacao_widget.dart' show TelaAutenticacaoWidget;
import 'package:flutter/material.dart';

class TelaAutenticacaoModel extends FlutterFlowModel<TelaAutenticacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Usuario widget.
  FocusNode? usuarioFocusNode;
  TextEditingController? usuarioTextController;
  String? Function(BuildContext, String?)? usuarioTextControllerValidator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in BotaoEntrar widget.
  ApiCallResponse? apiResultLogin;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    usuarioFocusNode?.dispose();
    usuarioTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
  }
}
