<div align="center">
  
# Alura - Formação - Desenvolva seu primeiro app com Flutter

## O que foi Proposto
  
Domine um dos frameworks de desenvolvimento mobile mais populares atualmente e, já no primeiro curso sobre Flutter, aprenda a criar aplicativos para Android e iOS.

## Mergulhe em Flutter

O Flutter é um framework de desenvolvimento de aplicativos mobile, web e desktop que utiliza a linguagem de programação Dart, permitindo criar apps com facilidade.

Uma das principais vantagens do Flutter no desenvolvimento mobile, é a possibilidade de utilizar uma única base de código para a criação de aplicativos que rodam em Android e iOS (conhecido como single codebase).

Nesta formação, você vai percorrer uma jornada do Curso Flutter: Widgets, Stateless, Stateful, Imagens e Animações até o Curso Flutter: gerenciamento de estados com Provider para entender como criar aplicativos do zero.

Ao mergulhar em cursos de Flutter completos, vamos passar por temas como: instalação das ferramentas, implementação de animações, navegação entre telas e gerenciamento de estados, além de outras habilidades que você precisa aprender para desenvolver o seu primeiro app.

<!--  <div align="start">
Benefícios desta formação:

* Dominar as principais bibliotecas e frameworks utilizados no mercado, como React, React Native, TypeScript, Native-base, MUI;
* Utilizar o Figma para consultar o design e protótipos da aplicação;
* Aprender a realizar requisições a APIs e gerenciar estados com Axios, Fetch e MobX;
* Implementar rotas privadas e navegação eficiente com o React Router Dom;
* Criar gráficos atraentes com a biblioteca Recharts.
* Criar aplicações mobile e web de alta qualidade e desempenho.
 </div> -->

## O que eu fiz

| :placard: Vitrine.Dev |  [Minha Vitrine Dev](https://cursos.alura.com.br/vitrinedev/dyeghocunha)   |
| -------------  | --- |
| :sparkles: Nome        | **Formação Flutter**
| :label: Tecnologias |   <img src="https://img.shields.io/badge/reactnative-5CE1E6?style=for-the-badge&logo=react&logoColor=white"><img src="https://img.shields.io/badge/typeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white"><img src="https://img.shields.io/badge/firebase-FEC927?style=for-the-badge&logo=firebase&logoColor=white"><img src="https://img.shields.io/badge/Expo-4630EB?style=for-the-badge&logo=expo&logoColor=white">
<!-- | 🎇: Bibliotecas | [Vanilla-Tilt](https://cdnjs.com/libraries/vanilla-tilt), [EXPO](https://expo.dev/), [Native-Base](https://nativebase.io/), [ReactNavigation](https://reactnavigation.org/) -->
| :rocket: URL         | [Projeto]()
<!-- | :fire: Desafio     | [Conheça o Challenge Alura] -->
<!-- | :laughing: Upgrades que fiz     | **Foi alterado todo o conceito da proposta, mantendo os desafios do Challange...fiz igual, mas diferente** -->
  
</div>

# 💪 Sobre o Professor

<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/professor.png?raw=true" alt="professor">
</div>

| :placard: Professor|  [Kako (Caio Couto Moreira)](https://www.linkedin.com/in/caio-couto-moreira-638a61106/)   |
| -------------  | --- |
| :label:  | [LinkedIn](https://www.linkedin.com/in/caio-couto-moreira-638a61106/)|
| :label:  | [GitHub](https://github.com/Kakomo)|



## Objetivo

Ao final desse desafio teremos esses conteudos prontos:

- Uma página inicial que contenha um buscador de produtos oferecidos pela empresa;
- Um banner/carrossel que contenha informações sobre a coleção do momento;
- Uma galeria com as categorias dos produtos disponíveis na loja;
- Uma galeria com as informações dos produtos, como: imagem, nome do produto, descrição e link que leva até a página de “Saiba mais sobre o produto”.
- Uma modal que contenha a imagem, o nome, a descrição, o preço, as variações do produto e a opção de adicionar na sacola;
- Uma seção para divulgar as facilidades que a loja proporciona para realizar as compras;
- Uma seção para cadastrar na newsletter e receber novidades;
- Um rodapé com informação do site.


# 🎨 Projeto no Figma
Acesse esse projeto aqui [Projeto](https://www.figma.com/file/61CRNXlUmooMttGVa0GvML/React-fullstack---Voll.med?node-id=444%3A5625&mode=dev)


<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma1.png?raw=true" alt="projeto no Figma">
</div>

<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma2.png?raw=true" alt="projeto no Figma">
</div>

# :one: Primeiro Passo | :construction:**Em progresso** <!-- :white_check_mark:**Feito**  -->

Nesse primeiro passo você irá construir um aplicativo mobile completo, utilizando React Native com TypeScript para garantir a qualidade e a segurança do código. Com o auxílio da biblioteca Native-base, você será capaz de criar designs e interfaces de usuário incríveis, proporcionando uma experiência agradável e funcional aos usuários finais, usando como base um Figma do layout do App.

Você também aprenderá a integrar seu aplicativo mobile com uma API externa utilizando Axios, uma biblioteca popular e eficiente para realizar requisições HTTP. Essa integração permitirá a comunicação entre o aplicativo e um servidor, possibilitando a troca de informações e a manipulação de dados em tempo real.



## Curso - React Native: Construindo um App com Native-base 

- :white_check_mark: <!-- :construction: --> Aula 1 | Instalando o expo e o TypeScript 
-  :white_check_mark:  <!-- :construction: --> Aula 2 | Criando a tela de login
-  :white_check_mark: <!-- :construction: --> Aula 3 | Criando tela de cadastro
- <!-- :white_check_mark: --> :construction: Aula 4 | Navegação entre telas
- <!-- :white_check_mark: --> :construction: Aula 5 | Criando telas de home e perfil


## Resultados do Primeiro Passo:

<div align="center">

<!-- ![Meu Projeto na Semana 1](https://github.com/DyeghoCunha/what_the_fox/blob/master/public/wtf%20%E2%80%90%20Feito%20com%20o%20Clipchamp.gif?raw=true) -->


</div>



# 🤯 Minha experiência

## Projeto em Desenvolvimento

### Primeiro Passo

Um destaque da aula 2 para mim, que foi novidade foi a inclusão do {...rest} no seguinte componente 

```
interface TituloProps extends ITextProps {
  children: ReactNode
}

export function Titulo({ children, ...rest }: TituloProps) {
  return (
    <Text fontSize="2xl"
      fontWeight="bold"
      color="gray.500"
      textAlign="center"
      mt={5}
      {...rest}
    >
      {children}
    </Text>
  )
}

```
Nesta parte, são realizados os imports necessários para o funcionamento do componente. O componente Texto é importado do pacote @native-base, que é uma biblioteca de componentes para o React Native com estilos personalizados.

Em seguida, é declarada uma interface chamada TituloProps, que estende as propriedades do componente Texto (ITextProps). A interface possui uma propriedade children, que é do tipo ReactNode. Essa propriedade permitirá que o componente Titulo receba conteúdo filho (children) e exiba dentro do componente Texto.

Aqui é declarado o componente Titulo. Ele é uma função que recebe as propriedades definidas na interface TituloProps como parâmetro.

Dentro do corpo da função, há o retorno do componente Texto , com algumas propriedades configuradas. Essas propriedades definem o estilo do título.

* fontSize: Define o tamanho da fonte como "2xl", que geralmente é um tamanho maior do que o padrão.
* fontWeight: Define o peso da fonte como "bold", tornando o texto em negrito.
* color: Define a cor do texto como "gray.500", que é um tom de cinza. Você pode usar qualquer cor válida do do CSS aqui.
* textAlign: Define o alinhamento do texto como "center", centralizando o título no componente.
* mt: Define uma margem superior de 5 unidades. Você pode ajustar esse valor conforme necessário.

E o que me chamou a atenção foi o spread operator {...rest} para repassar quaisquer outras propriedades personalizadas que possam ser fornecidas ao componente Titulo. Isso permite que você passe propriedades adicionais ao Texto se necessário.

Ja na quarta aula foi incluído o ScrollView no lugar do VStack.

O VStack (Vertical Stack) é um componente do NativeBase que organiza seus filhos verticalmente em uma pilha. Ele é semelhante ao conceito de flex container com a direção de fluxo definida como "column" (flexDirection: "column") em React Native padrão. O VStack é usado para agrupar elementos e controlar sua disposição vertical no layout.


O ScrollView é um componente do React Native que permite rolar o conteúdo além da tela visível. Ele é especialmente útil quando o conteúdo excede o tamanho da tela e você deseja permitir que o usuário role para ver o restante do conteúdo. No NativeBase, o ScrollView foi estilizado e aprimorado para ter uma experiência de rolagem mais suave e outras características adicionais.

Para testar a necessidade do ScrollView foi multiplicado várias vezes o campo e-mail

<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma4.png?raw=true" alt="projeto no Figma">
</div>

Ao Final da terceira aula, eu encontrei uma diferença entre a minha aplicação e a que estava sendo demostrada pelo professor, na minha o texto "Selecione o campo:" estava aparecendo em todas as janelas de cadastro e não apenas na janela de planos de saúde, como de fato deveria aparecer. O Código do professor estava como:

<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma5.png?raw=true" alt="projeto no Figma">
</div>


```
<Box> 
        <Text color="blue.800" fontWeight="bold" fontSize="md" mt={2} mb={2}>
          Selecione o campo
        </Text>
        {
          secoes[numSecao]?.checkbox?.map(checkbox => {
            return <Checkbox key={checkbox.id} value={checkbox.value}>
              {checkbox.value}
            </Checkbox>
          })
        }
      </Box>
```
E eu alterei para que o Box só fosse renderizado quando houvesse informações pertinentes a ele no checkbox, como segue a demonstração: 

<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma6.png?raw=true" alt="projeto no Figma">
</div>

```
 {secoes[numSecao]?.checkbox?.length > 0 && (
    <Box>
      <Text color="blue.800" fontWeight="bold" fontSize="md" mt={2} mb={2}>
        Selecione o campo
      </Text>
      {secoes[numSecao]?.checkbox?.map((checkbox) => {
        return (
          <Checkbox key={checkbox.id} value={checkbox.value}>
            {checkbox.value}
          </Checkbox>
        );
      })}
    </Box>
  )}
```

No início da quarta aula, comecou a ser implementantado o sistema de navegação entre as paginas, o primeiro metodo selecionado foi o de Navegação Stack utilizando a biblioteca [React-Navigation](https://reactnavigation.org/docs/getting-started)

<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma7.png?raw=true" alt="projeto no Figma">
</div>


A navegação em pilha (Stack navigation) é um padrão comum de navegação utilizado em aplicativos móveis para gerenciar a transição entre diferentes telas ou páginas. No React Native, a navegação em pilha pode ser implementada usando bibliotecas populares como o React Navigation.

A ideia principal da navegação em pilha é manter um histórico de telas empilhadas, onde cada tela adicionada à pilha fica no topo e é exibida ao usuário. Quando você navega para uma nova tela, ela é empilhada no topo da pilha, e você pode voltar à tela anterior removendo-a da pilha.

Também esta sendo utilizado o ButtonTab Navigation (também conhecido como Tab Navigation) que é um padrão de navegação amplamente utilizado em aplicativos móveis para organizar e alternar entre diferentes seções do aplicativo. Essa forma de navegação apresenta uma barra de guias (tabs) na parte inferior ou superior da tela, permitindo ao usuário alternar entre as diferentes telas ou seções do aplicativo com apenas um toque.


![Gif do ButtonTab](https://reactnavigation.org/assets/navigators/tabs/material-bottom-tabs.gif)





# 🖼️ Sobre o Autor


<div align="center">
<img src="https://github.com/DyeghoCunha/what_the_fox/blob/master/public/vitrinedex.png?raw=true" alt="projeto no Figma">
</div>


<!-- ## ⭐ Representação do projeto em diversas telas
<div align="center">
![Demonstração]()
</div> -->

 # 🖼️ Banner do VitrineDev
<div align="center">
<img src="https://github.com/DyeghoCunha/voll-mobile/blob/master/assets/image/figma7.png?raw=true" alt="Banner para o VitriniDev">
</div> 

 # 🖼️ Foto do Projeto


<!-- <div align="center">
<img src="https://github.com/DyeghoCunha/what_the_fox/blob/master/public/PaginaInicial_288x882.png?raw=true" alt="imagem do projeto">
</div>  -->

<!-- @media screen and (max-width: 1024px) {
  .cabecalho_container{
background-color: red;
}
}

/* Para smartphones com largura de 375px */
@media screen and (max-width: 767px) {
   .cabecalho_container{
background-color: blue;
}
