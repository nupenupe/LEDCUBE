function illuminate3D(esp,LED,LUT,dataPin,latchPin,clockPin,Layer)
%ILLUMINATE3D この関数の概要をここに記述
%   詳細説明をここに記述
for z = 1:length(Layer)
    register = illuminate(LUT,LED(:,:,z));
    writeDigitalPin(esp,Layer(z),1);    
    for i = 1:length(latchPin)
        writeDigitalPin(esp,latchPin(i),0);
        shiftout(esp,dataPin(i),clockPin(i),8,register(1,i));
        writeDigitalPin(esp,latchPin(i),1);
        %pause(0.01);
    end
    writeDigitalPin(esp,Layer(z),0);
end

end
