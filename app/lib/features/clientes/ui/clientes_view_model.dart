import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../../../core/utils/formatters.dart';
import '../../empresa/data/empresa_repository.dart';
import '../../empresa/domain/empresa.dart';
import '../../vendas/data/vendas_repository.dart';
import '../../vendas/domain/venda.dart';
import '../data/clientes_repository.dart';
import '../domain/cliente.dart';
import '../domain/rfm.dart';

part 'clientes_view_model.freezed.dart';
part 'clientes_view_model.g.dart';

@freezed
abstract class ClientesState with _$ClientesState {
  const ClientesState._();

  const factory ClientesState({
    required Empresa empresa,
    required List<ClienteRfm> clientes,
  }) = _ClientesState;

  int contar(Segmento s) => clientes.where((c) => c.segmento == s).length;
}

@riverpod
class ClientesViewModel extends _$ClientesViewModel {
  @override
  Future<ClientesState> build() async {
    ref.watch(dbRevisionProvider);
    final resumos = await ref.read(clientesRepositoryProvider).resumos();
    return ClientesState(
      empresa: await ref.read(empresaRepositoryProvider).obter(),
      clientes: calcularRfm(resumos, DateTime.now()),
    );
  }

  Future<void> salvar(Cliente c) => ref.read(clientesRepositoryProvider).salvar(c);
}

@freezed
abstract class ClienteDetalheState with _$ClienteDetalheState {
  const factory ClienteDetalheState({
    required ClienteRfm rfm,
    required List<Venda> historico,
    required Empresa empresa,
  }) = _ClienteDetalheState;
}

@riverpod
class ClienteDetalheViewModel extends _$ClienteDetalheViewModel {
  @override
  Future<ClienteDetalheState> build(int clienteId) async {
    final lista = await ref.watch(clientesViewModelProvider.future);
    final rfm = lista.clientes.firstWhere((c) => c.cliente.id == clienteId);
    final historico = await ref
        .read(vendasRepositoryProvider)
        .listar(desde: DateTime(2000), ate: diaRelativo(1), clienteId: clienteId);
    return ClienteDetalheState(rfm: rfm, historico: historico, empresa: lista.empresa);
  }
}
