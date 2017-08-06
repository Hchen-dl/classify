angles=zeros(9,9);
for m=1:9
    for n=1:9
        angles(m,n)=caculate_cross(result(m,:),result(n,:));
    end
end