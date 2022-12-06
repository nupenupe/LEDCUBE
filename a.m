clear;
esp = arduino()
% dataPin = ["D15" "D16" "D19" "D12"]; %文字列で定義．後でcharに変換する必要あり．
% output_enablePin = ["D2" "D17" "D21" "D14"]
% latchPin = ["D0" "D5" "D22" "D27"];
% clockPin = ["D4" "D18" "D23" "D26"];
% Layer = ["D25" "D33" "D32" "D35" "D34"];

dataPin ='D15' ;
output_enablePin = 'D2';
latchPin ='D0' ;
clockPin = 'D4';
Layer = 'D25';


while true
    for i = 1:8
        writeDigitalPin(esp,latchPin,0);
        disp(bitshift(0b1,i-1));
        shiftout(esp,dataPin,clockPin,8,bitshift(0b1,i-1));
        writeDigitalPin(esp,latchPin,1);
        pause(1);
    end
end

function shiftout(obj,dataPin, clockPin,bit,val)
    shiftoutlib(obj,dataPin, clockPin,bit,val)
end