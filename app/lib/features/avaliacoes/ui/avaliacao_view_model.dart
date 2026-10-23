import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../clientes/data/clientes_repository.dart';
import '../../clientes/domain/cliente.dart';
import '../../empresa/data/empresa_repository.dart';
import '../../empresa/domain/empresa.dart';
import '../data/avaliacoes_repository.dart';

part 'avaliacao_view_model.freezed.dart';
part 'avaliacao_view_model.g.dart';

@freezed
abstract class AvaliacaoState with _$AvaliacaoState {
  const factory AvaliacaoState({
    required Empresa empresa,
    required List<Cliente> clientes,
  }) = _AvaliacaoState;
}

@riverpod
class AvaliacaoViewModel extends _$AvaliacaoViewModel {
  @override
  Future<AvaliacaoState> build() async => AvaliacaoState(
        empresa: await ref.read(empresaRepositoryProvider).obter(),
        clientes: await ref.read(clientesRepositoryProvider).listar(),
      );

  Future<void> enviar({required int nota, String comentario = '', int? clienteId}) =>
      ref.read(avaliacoesRepositoryProvider).registrar(nota: nota, comentario: comentario, clienteId: clienteId);
}
