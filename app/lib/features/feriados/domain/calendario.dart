import 'feriado.dart';

/// Domingo de Páscoa (algoritmo de Meeus/Jones/Butcher).
DateTime pascoa(int ano) {
  final a = ano % 19;
  final b = ano ~/ 100;
  final c = ano % 100;
  final d = b ~/ 4;
  final e = b % 4;
  final f = (b + 8) ~/ 25;
  final g = (b - f + 1) ~/ 3;
  final h = (19 * a + b - d - g + 15) % 30;
  final i = c ~/ 4;
  final k = c % 4;
  final l = (32 + 2 * e + 2 * i - h - k) % 7;
  final m = (a + 11 * h + 22 * l) ~/ 451;
  final mes = (h + l - 7 * m + 114) ~/ 31;
  final dia = ((h + l - 7 * m + 114) % 31) + 1;
  return DateTime(ano, mes, dia);
}

DateTime _nDomingo(int ano, int mes, int n) {
  var d = DateTime(ano, mes, 1);
  while (d.weekday != DateTime.sunday) {
    d = DateTime(d.year, d.month, d.day + 1);
  }
  return DateTime(d.year, d.month, d.day + 7 * (n - 1));
}

DateTime _ultimaSextaDeNovembro(int ano) {
  var d = DateTime(ano, 11, 30);
  while (d.weekday != DateTime.friday) {
    d = DateTime(d.year, d.month, d.day - 1);
  }
  return d;
}

/// Calendário embutido (funciona offline): feriados nacionais + datas comerciais.
List<Feriado> calendarioPadrao(int ano) {
  final p = pascoa(ano);
  DateTime rel(int dias) => DateTime(p.year, p.month, p.day + dias);
  return [
    Feriado(data: DateTime(ano, 1, 1), nome: 'Confraternização Universal'),
    Feriado(data: rel(-47), nome: 'Carnaval', tipo: 'facultativo'),
    Feriado(data: rel(-2), nome: 'Sexta-feira Santa'),
    Feriado(data: p, nome: 'Páscoa', tipo: 'comercial'),
    Feriado(data: DateTime(ano, 4, 21), nome: 'Tiradentes'),
    Feriado(data: DateTime(ano, 5, 1), nome: 'Dia do Trabalho'),
    Feriado(data: _nDomingo(ano, 5, 2), nome: 'Dia das Mães', tipo: 'comercial'),
    Feriado(data: DateTime(ano, 6, 12), nome: 'Dia dos Namorados', tipo: 'comercial'),
    Feriado(data: rel(60), nome: 'Corpus Christi', tipo: 'facultativo'),
    Feriado(data: _nDomingo(ano, 8, 2), nome: 'Dia dos Pais', tipo: 'comercial'),
    Feriado(data: DateTime(ano, 9, 7), nome: 'Independência do Brasil'),
    Feriado(data: DateTime(ano, 9, 15), nome: 'Dia do Cliente', tipo: 'comercial'),
    Feriado(data: DateTime(ano, 10, 12), nome: 'Nossa Senhora Aparecida'),
    Feriado(data: DateTime(ano, 11, 2), nome: 'Finados'),
    Feriado(data: DateTime(ano, 11, 15), nome: 'Proclamação da República'),
    Feriado(data: DateTime(ano, 11, 20), nome: 'Dia da Consciência Negra'),
    Feriado(data: _ultimaSextaDeNovembro(ano), nome: 'Black Friday', tipo: 'comercial'),
    Feriado(data: DateTime(ano, 12, 25), nome: 'Natal'),
  ];
}
