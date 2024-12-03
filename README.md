# flutter-tech4
Tech Challenge 4 Low Code com o uso do Flutteflow

Funcionalidades

Criação de Eventos: Permite aos usuários cadastrar novos eventos.
Listagem de Eventos: Exibe uma lista de eventos criados.
Edição de Eventos: Permite editar os eventos cadastrados;
Exclusão de eventos: Permite excluir algum evento cadastrado;
Firebase Integration: Utiliza o Firebase para persistir dados, incluindo autenticação e Firestore para gerenciamento de dados em tempo real.

Tecnologias Utilizadas

FlutterFlow: Plataforma low-code para criação do aplicativo.
Firebase: Utilizado para autenticação e banco de dados Firestore.

Estrutura do Projeto

Inicialização do Firebase
No arquivo firebase_config.dart, é realizada a configuração do Firebase para o aplicativo.

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "API_KEY",
            authDomain: "criacao-eventos.firebaseapp.com",
            projectId: "criacao-eventos",
            storageBucket: "criacao-eventos.firebasestorage.app",
            messagingSenderId: "ID",
            appId: "APP_ID"));
  } else {
    await Firebase.initializeApp();
  }
}

Funcionalidades do Firestore

O projeto permite consultar os eventos armazenados no Firestore com funções como queryCriacaoEventosRecord, queryCriacaoEventosRecordOnce e queryCriacaoEventosRecordCount.

Stream<List<CriacaoEventosRecord>> queryCriacaoEventosRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CriacaoEventosRecord.collection,
      CriacaoEventosRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );


Páginas

O aplicativo inclui várias páginas, como a página inicial (PaginainicialWidget), cadastro de eventos (CadastrareventoWidget), e listagem de eventos (ListareventosWidget).

export '/pages/paginainicial/paginainicial_widget.dart' show PaginainicialWidget;
export '/pages/cadastrarevento/cadastrarevento_widget.dart' show CadastrareventoWidget;
export '/pages/listareventos/listareventos_widget.dart' show ListareventosWidget;

O projeto pode ser visualizado e testado em https://app.flutterflow.io/project/criacao-eventos-wip3ki
