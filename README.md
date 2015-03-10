# movieOrganize

Descrição e História
Decidi a voltar a assistir algumas series(TV Shows) que não acompanhava há algum tempo e para facilitar a organização de filmes e series e baixar suas respectivas legendas fiz o seguinte script.

Esse script organiza os filmes e series que estão na sua pasta desorganizada de downloads, copiando-os para seu HD externo em uma estrutura organizada.

O caminho do HD externo está fixo no script e no .bat (e:\)

O arquivo lengendar.bat na verdade, executa o script para organiza os filmes e series no hd externo (e:\) e depois chama
o utilitario getsub para legendar o conteúdo que já está organizado. Esse utilitário não é 100% ao baixar e acertar a 
legenda automaticamente mas acerta em cerca de 90% nos meus experimentos.

Modo de usar:
ruby c:\desenv\ror\organizemov.rb c:\minhapastadedonwloadsdessorganizada\

O resultado desse comando será copiar os arquivos *.mkv, *.mp4, *.avi da pasta c:\minhapastadedonwloadsdessorganizada\ para 
a unidade e:\

Para Começar:

1-veja os passos para instalar a gem que baixa as legendas
https://github.com/byroot/ruby-osdb

2-Altere o script movieOrganize.rb e legendar.bat para utilizar sua unidade de HD externo.(e:\) e o caminho de sua pasta de downloads no arquivo legendar.bat

Dica: para evitar que downloads não terminados sejam processados, eu ativo no meu torrent client uma opção para adicionar uma extensão para arquivos não finalizados.
