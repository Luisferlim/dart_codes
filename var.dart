main() {
  //um resumo sobre as varaveis nao primitivas do dart

  //lista, variavel do dart que eh definida por list 'name' = [...,...]
  var nomes = ['ana','bruno','carlos','joao']; //as variveis podem ser definidas na forma 'var' tambem
  
  nomes.add('Marcos');

  print(nomes.length);
  print(nomes.elementAt(1));
  print(nomes[4]);

  print('\n');
  
  Set<int> conjunto= {1,2,3,4}; //especie de conjunto mais parecido com vetor
  
  print(conjunto is Set); //teste logico
  print(conjunto.length);

  print('\n');
  
  Map<String, double> notaDosAlunos = 
  {
    'Ana' : 3.4,
    'Bruno' : 4.5,
    'Carlos' : 4.9
  };

  //printando as chaves
  for (var chave in notaDosAlunos.keys)
  {
    print('chave = $chave');
  }

  print('\n');

  //printando os valores
  for (var valor in notaDosAlunos.values)
  {
    print('valor = $valor');
  }
  
  print('\n');

  //printando ambos
  for (var registro in notaDosAlunos.entries)
  {
    print('${registro.key} = ${registro.value}');
  }
  
  print('\n');

  //temos tambem o tipo dynamic que simboliza uma variavel dinamica como
  //se tivessemos trabalhando numa linguagem fracamente tipada

  dynamic x = 'marcos';

  x = 2;

  x = true; 
  //pode assumir qualquer tipo de valor em momentos distintos, porem, no dart
  //nos acabamos por utilizar normalmente as variaveis tipadas por padrao

  print(x);

  print('\n');

  //temos tambem o final com o const

  var a = 4;
  a = 5;

  final b = 12;
  //b = 15; -> final's tem um tempo real mais otimizado -> serve para nao
  //mudarmos mais o valor de uma variavel (se valor final)

  const c = 4;
  //c = 5; -> constantes tem um tempo de compilacao otimizado 
}
