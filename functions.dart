//funcao que faz uma soma com valores dinamicos (sem inferencia)
soma_dinamica (a, b)
{
  print(a + b);
}
//funcao com valores tipados
soma(int a, int b)
{
  print(a + b);
}
//funcao de retorno
int soma_ret (int a, int b)
{
  return a + b;  
}
//funcao de inteiro que recebe uma funcao como parametro 
int exec (int a, int b, int Function(int , int) fn)
{
  return fn(a,b);
}

main()
{
  final r = soma_ret(1,2);
  
  soma_dinamica(1,2);
  print('\n');
  soma(2,3);
  print('o valor da soma eh $r');
  print('\n');

  // podemos ainda definir uma funcao na declaracao da variavel
  final s = exec(2,3, (a,b)
  {
    return a - b;
  });

  //essa eh a forma resumida da anterior, na qual o '=>' simboliza
  //o retorno da funcao 
  final t = exec(2,3, (a,b) => a * b + 100);

  print('o resultado eh $s!!!');
  print('\n');
  print('o resultado seguinte eh $t!!!');
}