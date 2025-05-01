import '/flutter_flow/flutter_flow_util.dart';
import '/pages/item_edita_excluir/item_edita_excluir_widget.dart';
import 'pagina_inicial_widget.dart' show PaginaInicialWidget;
import 'package:flutter/material.dart';

class PaginaInicialModel extends FlutterFlowModel<PaginaInicialWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
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
