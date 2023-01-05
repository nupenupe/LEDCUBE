void shift(int dataPin, int clockPin, int bit, int val){
  for(int i = 0; i < bit; i++){
    digitalWrite(dataPin, (val << i) & 0b1);
    digitalWrite(clockPin, 1);
    digitalWrite(clockPin, 0);
  }
}