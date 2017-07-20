
im = imread( 'pic8.jpg' );
hsv = rgb2hsv( im );
H = hsv( :,:,1);
S = hsv( :,:,2);
V = hsv(:,:,3);
distribution=tabulate(V(:));
s=size(distribution)
result=zeros(1,5);
for n=1:s(1,1)
    if distribution(n,1)<0.125 
        result(1,1)=result(1,1)+distribution(n,3);
    elseif distribution(n,1)<0.375
         result(1,2)=result(1,2)+distribution(n,3);
    elseif distribution(n,1)<0.625
         result(1,3)=result(1,3)+distribution(n,3);
    elseif distribution(n,1)<0.875
         result(1,4)=result(1,4)+distribution(n,3);
    else 
         result(1,5)=result(1,5)+distribution(n,3);
    end
end