const String tableFuncionario = 'funcionario';
const String tableConfiguracao = 'configuracao_escala';
const String tableUsuario = 'usuario';

const String createTableFuncionario = '''
  CREATE TABLE $tableFuncionario (
    id TEXT PRIMARY KEY,
    nome TEXT NOT NULL,
    funcao INTEGER NOT NULL,
    turno INTEGER NOT NULL,
    escala INTEGER NOT NULL,
    ativo INTEGER NOT NULL
  )
''';

const String createTableConfiguracao = '''
  CREATE TABLE $tableConfiguracao (
    id TEXT PRIMARY KEY,
    dataBase TEXT NOT NULL,
    escalaBase INTEGER NOT NULL
  )
''';

const String createTableUsuario = '''
  CREATE TABLE $tableUsuario (
    id TEXT PRIMARY KEY,
    usuario TEXT NOT NULL,
    senhaHash TEXT NOT NULL
  )
''';