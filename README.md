# movieOrganize

HISTÓRIA

Decidi a voltar a assistir algumas series(TV Shows) que não acompanhava há algum tempo e para facilitar a organização dessas series e de alguns filmes e já baixar suas respectivas legendas fiz esse script.

DESCRIÇÃO

Esse script organiza os filmes e series que estão na sua pasta desorganizada de downloads, copiando-os para seu HD externo em uma estrutura organizada.

O caminho do HD externo deve ser definido no arquivo org.bat por exemplo(e:\)

O arquivo org.bat parametriza a chamada para outros scripts ruby que organizam os filmes e series no hd externo (e:\) e depois baixa suas respecTivas legendas por meio do utilitário getsub.

PASSOS PARA UTILIZAR

1-Instale o Ruby:

    a-baixar o instalador de http://rubyinstaller.org/downloads
 
    b-Marcar opção de adicionar ao path os comandos do ruby
 
2-Instalar plugin do ruby para legendas:

    a-Iniciar um terminal(cmd)

    b-entrar o comando: gem install osdb

3-Altere o script org.bat, em qualquer editor de texto, para utilizar sua unidade de HD externo.(e:\) e o caminho de sua pasta de downloads.

4-Agora basta executar o org.bat sempre que quiser organizar novos downloads no hd externo.

Dica 1: para evitar que downloads não terminados sejam processados, eu ativo no meu torrent client uma opção para adicionar uma extensão para downloads não finalizados.

Dica 2: Antes de apagar o arquivo do hd remova ele primeiro da pasta de downloads, para evitar que seja copiado novamente.

Dica 3: Para mais informaçoes sobre o o utilitário que baixa as legendas, veja https://github.com/byroot/ruby-osdb

