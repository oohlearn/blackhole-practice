int getUnit(int value){
  double num = value / 10;
  int numInt = num.toInt();
  int unit = value - numInt * 10;
  return unit;
}

int getAnswer(int answer){

  int u1 = getUnit(answer);

  double number2 = answer /10 ;
  int u2 = getUnit(number2.toInt());

  double number3 = number2 /10 ;
  int u3 = getUnit(number3.toInt());

  double number4 = number3 /10 ;
  int u4 = getUnit(number4.toInt());

  var numbers = [u1, u2, u3, u4];
  numbers.sort();

  // print(numbers);
  
  int minNum = 0;
  
  for(int i = 0; i < 4 ; i++){
    minNum = minNum * 10 + numbers[i];
  }

  int maxNum = 0;
  for(int i = 3 ; i > -1 ; i--){
    maxNum = maxNum * 10 + numbers[i];
  }
  
  int result = maxNum - minNum;
  return result;
}

void main(){
  int number = 8496;
  int answer = getAnswer(number);
  print(answer);

  int answer2 = getAnswer(answer);
  print(answer2);

  while(answer != 6174){
    answer = getAnswer(answer);
    print(answer);
  }



  





}