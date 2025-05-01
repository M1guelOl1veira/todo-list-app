import '/flutter_flow/flutter_flow_util.dart';
import '/pages/item_edita_excluir/item_edita_excluir_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ItemEditaExcluir component.
  late ItemEditaExcluirModel itemEditaExcluirModel;

  @override
  void initState(BuildContext context) {
    itemEditaExcluirModel = createModel(context, () => ItemEditaExcluirModel());
  }

  @override
  void dispose() {
    itemEditaExcluirModel.dispose();
  }
}
