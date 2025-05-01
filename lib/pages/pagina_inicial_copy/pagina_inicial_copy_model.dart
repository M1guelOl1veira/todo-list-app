import '/flutter_flow/flutter_flow_util.dart';
import '/pages/item_edita_excluir/item_edita_excluir_widget.dart';
import 'pagina_inicial_copy_widget.dart' show PaginaInicialCopyWidget;
import 'package:flutter/material.dart';

class PaginaInicialCopyModel extends FlutterFlowModel<PaginaInicialCopyWidget> {
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
