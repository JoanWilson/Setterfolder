# Setterfolder

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

<img src="https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white">

> Setterfolder é um programa de terminal criado com Swift e gerenciado pelo SPM (Swift Package Manager), que organiza suas pastas Downloads, Desktop ou qualquer pasta especificada. Ele consegue reconhecer o tipo do arquivo no diretório e enviar para as pastas comuns (Pictures, Movies, Music, Documents e etc).

## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:
* Você instalou a versão mais recente de `macOS 10.12ˆ`
* Você tem uma máquina `Mac`, pois somente será compatível com MacOS
* Você deu permissões para o programa ter acesso as pastas e fazer alterações. 
* Você instalou Swift e possui suas variáveis de ambiente configuradas.
* Instalar o xcode e rodar o projeto pelo o próprio Xcode é o ideal.
* Você possui git instalado na sua máquina e suas variáveis de ambiente estão configuradas.
* Você leu `Este README.md até o final`.

## 🚀 Instalando Setterfolder

Para instalar o Setterfolder siga estas etapas:

macOS (Somente):

Primeiramente, faça clone do projeto pelo o comando:
```
git clone https://github.com/JoanWilson/Setterfolder.git
```
Para realizar a build, é recomendado que faça pelo Xcode, mas se não estiver disponível, configure as seguintes persmissões:

<img width="680" alt="Screenshot 2022-03-23 at 11 07 24" src="https://user-images.githubusercontent.com/48629647/159718489-7465915a-f088-40c9-8c8d-5b992c9627b4.png">

Então realize este comando como administrador no diretório da pasta Setterfolder:
```
sudo swift build 
sudo swift run
```
(Sempre será necessário dar permissões ao realizar uma nova build!)

Faça login e aproveite as funcionalidades do programa!



## ☕ Usando Setterfolder

OBS: Será necessário criar uma pasta chamada "Installers" por enquanto na sua pasta User

Após iniciar o programa com swift run, você verá a seguinte tela:

<img width="734" alt="Screenshot 2022-03-23 at 11 15 52" src="https://user-images.githubusercontent.com/48629647/159720965-3f325f08-0559-4895-9fb7-db4a4457abd3.png">

* Opções 1 e 2 organizam suas pastas desktop e downloads automáticamente. Para organizar uma nova pasta, é necessário enviar o path completo dessa pasta.

Quando esta tela aparecer, você poderá conferir se tudo ocorreu como esperado, em caso de erro. Você será notificado pelo o terminal:

<img width="764" alt="Screenshot 2022-03-23 at 11 16 09" src="https://user-images.githubusercontent.com/48629647/159721365-c6192fdb-d729-45f9-b679-2949eeceb0f6.png">

# Exemplo de uso

Antes de usar Setterfolder

<img width="1422" alt="Screenshot 2022-03-22 at 17 21 41" src="https://user-images.githubusercontent.com/48629647/159721832-f2b34427-109a-4b86-b284-6da73ab02e60.png">

Após Setterfolder

<img width="1420" alt="Screenshot 2022-03-22 at 17 20 43" src="https://user-images.githubusercontent.com/48629647/159721916-49581169-8359-4efe-91a8-c2738c702774.png">

Os arquivos não foram excluídos, foram para a pasta Installers:

<img width="1424" alt="Screenshot 2022-03-23 at 11 26 04" src="https://user-images.githubusercontent.com/48629647/159722217-afd71ce9-fdbd-4198-89b1-8b744747069c.png">





## 📫 Contribuindo para Setterfolder
<!---Se o seu README for longo ou se você tiver algum processo ou etapas específicas que deseja que os contribuidores sigam, considere a criação de um arquivo CONTRIBUTING.md separado--->
Para contribuir com Setterfolder, siga estas etapas:

1. Bifurque este repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin Setterfolder / <local>`
5. Crie a solicitação de pull.

Como alternativa, consulte a documentação do GitHub em [como criar uma solicitação pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## 🤝 Desenvolvido por


<table>
  <tr>
    <td align="center">
      <a href="#">
        <img src="https://avatars.githubusercontent.com/u/48629647?v=4" width="100px;" alt="Foto de Joan Wilson no GitHub"/><br>
        <sub>
          <b>Joan Wilson</b>
        </sub>
      </a>
    </td>
      </a>
    </td>
  </tr>
</table>



[⬆ Voltar ao topo](#Setterfolder)<br>
