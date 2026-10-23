import 'package:freezed_annotation/freezed_annotation.dart';

part 'empresa.freezed.dart';
part 'empresa.g.dart';

@freezed
abstract class Empresa with _$Empresa {
  const Empresa._();

  const factory Empresa({
    required String nome,
    required String segmento,
    @Default('') String cidade,
    @Default('') String instagram,
    @Default('') String whatsapp,
  }) = _Empresa;

  factory Empresa.fromJson(Map<String, dynamic> json) => _$EmpresaFromJson(json);

  static const vazia = Empresa(nome: 'Meu negócio', segmento: 'Comércio');

  /// @usuario do Instagram, sem duplicar o "@".
  String get arroba => instagram.isEmpty ? '' : '@${instagram.replaceAll('@', '').trim()}';

  String get linkInstagram =>
      instagram.isEmpty ? '' : 'https://instagram.com/${instagram.replaceAll('@', '').trim()}';

  String get linkWhatsapp {
    final digitos = whatsapp.replaceAll(RegExp(r'\D'), '');
    if (digitos.isEmpty) return '';
    return 'https://wa.me/${digitos.startsWith('55') ? digitos : '55$digitos'}';
  }
}
