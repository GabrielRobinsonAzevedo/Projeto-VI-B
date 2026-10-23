import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

part 'compartilhamento_service.g.dart';

/// Envolve o share sheet do Android (WhatsApp, Instagram, e-mail, Drive...).
class CompartilhamentoService {
  Future<void> texto(String texto, {String? assunto}) =>
      SharePlus.instance.share(ShareParams(text: texto, subject: assunto));

  Future<void> arquivo(
    Uint8List bytes, {
    required String nome,
    required String mimeType,
    String? texto,
  }) =>
      SharePlus.instance.share(ShareParams(
        files: [XFile.fromData(bytes, name: nome, mimeType: mimeType)],
        fileNameOverrides: [nome],
        text: texto,
      ));
}

@Riverpod(keepAlive: true)
CompartilhamentoService compartilhamentoService(Ref ref) => CompartilhamentoService();
