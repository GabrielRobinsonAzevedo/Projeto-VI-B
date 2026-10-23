import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../empresa/data/empresa_repository.dart';
import '../../feriados/data/feriados_repository.dart';

part 'splash_view_model.g.dart';

/// Prepara o banco na primeira execução (dados de demonstração + calendário).
@riverpod
class SplashViewModel extends _$SplashViewModel {
  @override
  Future<void> build() async {
    final inicio = DateTime.now();
    final empresa = ref.read(empresaRepositoryProvider);
    if (!await empresa.existe()) await empresa.restaurarDemonstracao();

    final feriados = ref.read(feriadosRepositoryProvider);
    await feriados.garantirCalendario();
    // Atualização opcional pela internet; se falhar, segue com o calendário salvo.
    unawaited(feriados.sincronizar().then((_) {}, onError: (_) {}));

    final decorrido = DateTime.now().difference(inicio);
    const minimo = Duration(milliseconds: 1100);
    if (decorrido < minimo) await Future<void>.delayed(minimo - decorrido);
  }
}
