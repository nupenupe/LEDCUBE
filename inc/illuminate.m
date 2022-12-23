function register =illuminate(LUT,LED)
%ILLMNATE この関数の概要をここに記述
%   詳細説明をここに記述
register = zeros(1,4);
for x = 1:5
    for y = 1:5
        if LED(x,y) == 1
            register(1,LUT(x,y,1)) = register(1,LUT(x,y,1)) + 2^(LUT(x,y,2)-1);
        end
    end
end


