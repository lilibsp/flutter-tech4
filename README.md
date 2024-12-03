# flutter-tech4
Tech Challenge 4 Low Code com o uso do Flutteflow

O projeto pode ser testado em https://app.flutterflow.io/project/criacao-eventos-wip3ki

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

Funcionalidades do Firestore

O projeto permite consultar os eventos armazenados no Firestore com funções como queryCriacaoEventosRecord, queryCriacaoEventosRecordOnce e queryCriacaoEventosRecordCount.

Navegação e UI

A navegação é gerenciada com a biblioteca GoRouter, e a aparência do aplicativo é ajustada utilizando o FlutterFlowTheme.

Páginas

O aplicativo inclui várias páginas, como a página inicial (PaginainicialWidget), cadastro de eventos (CadastrareventoWidget), e listagem de eventos (ListareventosWidget).

Como Executar o Projeto

Pré-requisitos

Flutter: Certifique-se de que o Flutter esteja instalado corretamente em seu ambiente de desenvolvimento.
Firebase: Um projeto Firebase configurado e vinculado ao seu aplicativo.

Passos

Clonar o repositório:
git clone https://github.com/usuario/criacao-eventos.git
cd criacao-eventos

Instalar dependências:
flutter pub get

Configurar Firebase:
Adicione suas credenciais do Firebase no arquivo de configuração firebase_options.dart com as informações específicas do seu projeto Firebase.

Executar o aplicativo:
flutter run


