/// ✏️ EDITE AQUI os dados do grupo — eles aparecem na tela "Equipe" do app.
const projeto = 'Projeto VI-B';
const disciplinas = 'Ciência dos Dados + Dispositivos Móveis II';
const instituicao = 'Nome da instituição';
const professor = 'Prof. Nome do Professor';
const versaoApp = '1.0.0';

class Integrante {
  const Integrante(this.nome, this.ra, this.papel);

  final String nome;
  final String ra;
  final String papel;
}

const integrantes = [
  Integrante('Nome do Integrante 1', 'RA 000000', 'Desenvolvimento mobile (Flutter)'),
  Integrante('Nome do Integrante 2', 'RA 000000', 'Banco de dados (SQLite/drift)'),
  Integrante('Nome do Integrante 3', 'RA 000000', 'Ciência de dados e algoritmos'),
  Integrante('Nome do Integrante 4', 'RA 000000', 'UX/UI e wireframes'),
  Integrante('Nome do Integrante 5', 'RA 000000', 'Documentação e testes'),
];

const tecnologias = [
  'Flutter', 'Dart', 'Riverpod', 'drift (SQLite)', 'go_router', 'freezed', 'dio', 'fl_chart',
];
