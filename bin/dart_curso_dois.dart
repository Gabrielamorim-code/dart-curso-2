void main(List<String> arguments) {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e citrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);
}

bool funcEstaMadura(int dias){
  if(dias >= 30){
  return true;
  }else{
    return false;
  }
}