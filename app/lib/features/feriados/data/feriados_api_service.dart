import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/network/dio_provider.dart';
import '../domain/feriado.dart';

part 'feriados_api_service.g.dart';

/// Consulta os feriados nacionais na BrasilAPI (https://brasilapi.com.br).
class FeriadosApiService {
  FeriadosApiService(this._dio);

  final Dio _dio;

  static const _base = 'https://brasilapi.com.br/api/feriados/v1';

  Future<List<FeriadoDto>> buscar(int ano) async {
    final resposta = await _dio.get<List<dynamic>>('$_base/$ano');
    return [
      for (final item in resposta.data ?? const [])
        FeriadoDto.fromJson(item as Map<String, dynamic>),
    ];
  }
}

@Riverpod(keepAlive: true)
FeriadosApiService feriadosApiService(Ref ref) => FeriadosApiService(ref.watch(dioProvider));
