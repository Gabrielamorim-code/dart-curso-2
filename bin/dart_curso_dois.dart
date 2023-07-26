void main(List<String> arguments) {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e citrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  if (diasDesdeColheita >=30){
    isMadura = true;
  }else{
    isMadura = false;
  }

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

bool funcEstaMadura(int dias){
  if(dias >= 30){
  return true;
  }else{
    return false;
  }
}

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

 int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome,this.peso,this.cor,this.sabor,this.diasDesdeColheita,{this.isMadura});
  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDesdeColheita dias, e precisa $diasParaMadura para poder comer. Ele está madura? $isMadura"); 
  }
}