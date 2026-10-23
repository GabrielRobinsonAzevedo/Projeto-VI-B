import 'package:intl/intl.dart';

final _brl = NumberFormat.currency(locale: 'pt_BR', symbol: r'R$', decimalDigits: 2);
final _brlCompacto = NumberFormat.compactCurrency(locale: 'pt_BR', symbol: r'R$', decimalDigits: 1);
final _inteiro = NumberFormat.decimalPattern('pt_BR');

String brl(num valor) => _brl.format(valor);

/// R$ 31,2 mil para valores grandes; formato completo para os demais.
String brlCurto(num valor) => valor.abs() >= 10000 ? _brlCompacto.format(valor) : brl(valor);

String inteiro(num valor) => _inteiro.format(valor);

String variacao(double percentual) {
  final sinal = percentual > 0 ? '+' : '';
  return '$sinal${percentual.toStringAsFixed(percentual.abs() < 10 ? 1 : 0).replaceAll('.', ',')}%';
}

const diasSemanaCurto = ['Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'];
const diasSemanaLongo = ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'];

/// Rótulo curto do dia da semana a partir de [DateTime.weekday] (1 = segunda).
String diaSemana(DateTime d) => diasSemanaCurto[d.weekday - 1];

DateTime inicioDoDia(DateTime d) => DateTime(d.year, d.month, d.day);

/// Dia relativo a hoje, sem problemas de horário de verão.
DateTime diaRelativo(int deslocamento, [DateTime? base]) {
  final b = base ?? DateTime.now();
  return DateTime(b.year, b.month, b.day + deslocamento);
}

String rotuloDia(DateTime d) {
  final hoje = inicioDoDia(DateTime.now());
  final dia = inicioDoDia(d);
  final diff = hoje.difference(dia).inDays;
  if (diff == 0) return 'Hoje';
  if (diff == 1) return 'Ontem';
  return DateFormat("EEE, d 'de' MMM", 'pt_BR').format(d);
}

String hora(DateTime d) => DateFormat('HH:mm').format(d);
String dataCurta(DateTime d) => DateFormat('dd/MM').format(d);
String dataLonga(DateTime d) => DateFormat("d 'de' MMMM", 'pt_BR').format(d);

String haQuantosDias(int dias) {
  if (dias <= 0) return 'hoje';
  if (dias == 1) return 'ontem';
  return 'há $dias dias';
}

String iniciais(String nome) {
  final partes = nome.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
  if (partes.isEmpty) return '?';
  if (partes.length == 1) return partes.first.substring(0, 1).toUpperCase();
  return (partes.first[0] + partes.last[0]).toUpperCase();
}
