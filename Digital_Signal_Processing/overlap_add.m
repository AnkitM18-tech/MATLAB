clc;
clear all;
x=input('Enter 1st sequence X(n)= ');
h=input('Enter 2nd sequence H(n)= ');
L=input('Enter length of each block L = ');
subplot (2,2,1);
stem(x);
stem(x,'blue');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X(n)');
subplot (2,2,2);
stem(h);
stem(h,'black');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' H(n)');
M=length(h);
lx=length(x);
r=rem(lx,L);
x1=[x zeros(1,L-r)];
nr=(length(x1))/L;
h1=[h zeros(1,L-1)];
for k=1:nr
    Ma(k,:)=x1(((k-1)*L+1):k*L);
    if k==1
        Ma1(k,:)=[zeros(1,M-1) Ma(k,:)];
    else 
        Ma1(k,:)=[Ma(k-1,(L-M+2):L) Ma(k,:)];        
    end
     Ma2(k,:)=ifft(fft(Ma1(k,:)).*fft(h1));
end
Ma3=Ma2(:,M:(L+M-1));
y1=Ma3';
y=y1(:);
subplot (2,2,3:4);
stem(y,'red');
xlabel ('n---->(Ankit Kumar Mohanty,1702070017)');
ylabel ('Amplitude ---->');
title ('Convolved Signal');
ha = axes ('Position',[0 0 1 1],'Xlim',[0 1],'Ylim',[0 1],'Box','off','Visible','off','Units','normalized', 'clipping' , 'off');
text (0.5, 1,'\bf Convolution using Overlap Save Method ','HorizontalAlignment','center','VerticalAlignment', 'top')
disp(y)