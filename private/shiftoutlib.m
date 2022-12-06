function shiftoutlib(obj,dataPin, clockPin,bit,val)
%SHIFTOUT シフトレジスタに出力
%   obj: マイコン
%   dataPin:  dataPinのピン番号
%   clockPin:  clockPinのピン番号
%   bit: 送信ビット数
%   val:シフトレジスタに送る値(2進数)

for i = 1:bit
    writeDigitalPin(obj,dataPin,bitand(bitshift(val,1-i),0b1));
    writeDigitalPin(obj,clockPin,1);
    writeDigitalPin(obj,clockPin,0);
end
    writeDigitalPin(obj,dataPin,0);


end

