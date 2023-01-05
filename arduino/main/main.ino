
int dataPin[4] ={15, 16, 19, 12}; //文字列で定義．charに変換する必要あり．
int output_enablePin[3] = {17, 21, 14};//使わない．LOWにする．後でVCC接続.
int latchPin[4] = {0, 5, 22, 27};
int clockPin[4] = {4, 18, 23, 26};
int Layer[5] = {25, 13, 32, 2, 33};
int number_layers = 5;

void setup() {
  // put your setup code here, to run once:
  pinMode_output(dataPin);
  pinMode_output(output_enablePin);
  pinMode_output(latchPin);
  pinMode_output(clockPin);
  pinMode_output(Layer);

  // don't use pin
  for(int i = 0; i < 3; i++){
    digitalWrite(output_enablepin[i],0);
  }

}

void loop() {
  // put your main code here, to run repeatedly:


}

void pinMode_output(int Pin[]){
  int index = sizeof(Pin) / sizeof(int);
  for(int i = 0; i < index; i++){
    pinMode(Pin[i], OUTPUT);
  } 
}
