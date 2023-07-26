void main(List<String> arguments) {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e citrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  mostarMadura("uva", 40, cor: "Roxa");
  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print(quantosDias);
}

 int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

//Parametros
/*Posicionais obrigatorios, devem ser posicionados na ordem
 que sao setados na construção da função
e sao obrigatorios na chamada da função*/

/*Nomeados opcionais
Sao parametros que nao sao essenciais na função porem podem ser informados na chamada dela
deve-se passar o argumento com nome do parametro dois ponto e o valor do argumento 
EX: cor: "roxa", tambem podem ser colocados em qualquer opção
*/

/*Parametros com "Padrao"
Esse parametro é definido com = no parametro, e quando é colocado,
verifica se existe um valor passado no argumento,
caso nao seja, ele preenche com o default definido no parametro da função
*/

/*Modificador Required
Ele é um parametro obrigatorio, porem é nomeado, o que torna mais simples
 a vizualição de qual argumento vai para qual parametro
*/
mostarMadura (String nome, int dias, {required String cor}){
  if(dias >=30){
    print("A $nome está madura");
  }else{
        print("A $nome não está madura");

  }
  if(cor != null){
    print("A $nome é $cor");
  }

}

bool funcEstaMadura(int dias){
  if(dias >= 30){
  return true;
  }else{
    return false;
  }
}

