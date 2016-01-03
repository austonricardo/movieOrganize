# movieOrganize

História
Decidi a voltar a assistir algumas series(TV Shows) que não acompanhava há algum tempo e para facilitar a organização dessas series e de alguns filmes e já baixar suas respectivas legendas fiz esse script.

Descrição
Esse script organiza os filmes e series que estão na sua pasta desorganizada de downloads, copiando-os para seu HD externo em uma estrutura organizada.

O caminho do HD externo deve ser definido no arquivo org.bat por exemplo(e:\)

O arquivo org.bat parametriza a chamada para outros scripts ruby que organizam os filmes e series no hd externo (e:\) e depois baixa suas respeccivas legendas por meio do utilitário getsub.

PASSOS PARA UTILIZAR

1-Instale o Ruby:

 a-baixar o instalador de http://rubyinstaller.org/downloads
 
 b-Marcar opção de adicionar ao path os comanndo do ruby
 
2-Instalar plugin do ruby para legendas
a-Iniciar um terminal(cmd) e entrar o comando 
   gem install osdb

OBS:para mais informaçoes veja https://github.com/byroot/ruby-osdb

3-Altere o script org.bat, em qualquer editor de texto, para utilizar sua unidade de HD externo.(e:\) e o caminho de sua pasta de downloads.

Dica: para evitar que downloads não terminados sejam processados, eu ativo no meu torrent client uma opção para adicionar uma extensão para downloads não finalizados.

4-Agora basta executar o org.bat sempre que quiser organizar novos downloads no hd externo.
