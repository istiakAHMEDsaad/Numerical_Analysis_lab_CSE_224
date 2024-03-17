clc
syms x;
y = input('Enter non linear equation: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
e = input('Tolerable error: ');
c_plot=[];
fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));
itt=1;
if fa*fb>0
    disp('No root bracket between a and b');
else
    n = input("Enter number of ittaration you want: ");
  disp('Itr No.    a           b           c           f(a)        f(b)        f(c)');
    while n>=itt
        c=((a*fb)-(b*fa))/(fb-fa);
        fc=eval(subs(y,x,c));
        c_plot= [c_plot c];
        fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n',itt,a,b,c,fa,fb,fc);
        itt=itt+1;
        if fa*fc<0
            b=c;
        else
            a=c;
         end
    end
    disp('The Root is: '); disp(c); plot(c_plot, 1:1:n);
end