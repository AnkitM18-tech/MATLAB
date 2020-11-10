clc;
close all;
clear all;
n=input('Enter n value for n-bit PCM system :  ');
n1=input('Enter number of samples in a period : ');
L=2^n;
% % Signal Generation
x=0:2*pi/n1:4*pi;               
s=8*sin(x);
subplot(5,1,1);
plot(s);
title('Analog Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(5,1,2);
stem(s);grid on;  title('Sampled Signal');  ylabel('Amplitude--->');  xlabel('Time--->');
 %  Quantization Process
 vmax=8;
 vmin=-vmax;
 del=(vmax-vmin)/L;
 part=vmin:del:vmax;                                 
 code=vmin-(del/2):del:vmax+(del/2);         
 [ind,q]=quantiz(s,part,code);                    
                                                                     
 l1=length(ind);
 l2=length(q);
  
 for i=1:l1
    if(ind(i)~=0)                                           
       ind(i)=ind(i)-1;
    end 
    i=i+1;
 end   
  for i=1:l2
     if(q(i)==vmin-(del/2))                         
         q(i)=vmin+(del/2);
     end
 end    
 subplot(5,1,3);
 stem(q);grid on;                                       
 title('Quantized Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');
  
 %  Encoding Process
 code=de2bi(ind,'left-msb');            
 k=1;
for i=1:l1
    for j=1:n
        coded(k)=code(i,j);                 
        j=j+1;
        k=k+1;
    end
    i=i+1;
end
 subplot(5,1,4); grid on;
 stairs(coded);                                 
axis([0 100 -2 3]);  title('Encoded Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');
 
 %   Demodulation Of PCM signal
 
 qunt=reshape(coded,n,length(coded)/n);
 index=bi2de(qunt','left-msb');                 
 q=del*index+vmin+(del/2);                      
 subplot(5,1,5); grid on;
 plot(q);                                                       
 title('Demodulated Signal');
 ylabel('Amplitude--->');
 xlabel('Time--->');