function angle=caculate_cross(num1,num2)
angle=acos(dot(num1,num2)/(norm(num1)*norm(num2)))
end