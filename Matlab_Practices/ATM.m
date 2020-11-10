clc
clear
close all
choice=menu('User','Admin','Customer');
switch (choice)
    case 1
        load db1;
        n=input('enter no of customers:');
        for i=p+1:p+n
            cust(i).a=input('enter name:');
            cust(i).b=input('enter acct.no:');
            cust(i).c=input('enter opening balance:');
            cust(i).d=input('enter password:');
            cust(i).x=zeros(1,5);
        end
        p=p+n;
        save db1;
    case 2
        load db1;
        acc=input('enter account no:');
        pass=input('enter password:');
        pp=0;
        x=menu('operations','deposit','withdrawal','mini-statement');
        switch (x)
            case 1
                for i2=1:p
                    if(cust(i2).b==acc & cust(i2).d==pass)
                        amt=input('enter the amount to be deposited:');
                        cust(i2).c=cust(i2).c+amt;
                        fprintf('total amt present is  %d',cust(i2).c);
                        save db1;
                        pp=1;
                        if (cust(i2).x(5)==0)
                            cust(i2).x(5)=+amt;
                        else
                            cust(i2).x(1)=cust(i2).x(2);
                            cust(i2).x(2)=cust(i2).x(3);
                            cust(i2).x(3)=cust(i2).x(4);
                            cust(i2).x(4)=cust(i2).x(5);
                            cust(i2).x(5)=+amt;
                        end
                        save db1;
                    end
                end
                if pp==0
                    disp('Wrong acct no or password');
                end
            case 2
                load db1;
                pp=0;
                 for i2=1:p
                  if(cust(i2).b==acc & cust(i2).d==pass)
                        amt=input('enter the amount to be withdrawn:');
                        if(amt<=cust(i2).c)
                        cust(i2).c=cust(i2).c-amt;
                        fprintf('total amt present is %d',cust(i2).c);
                        pp=1;
                        save db1;
                        else
                            fprintf('insufficient balance');
                        end
                    if (cust(i2).x(5)==0)
                            cust(i2).x(5)=-amt;
                        else
                            cust(i2).x(1)=cust(i2).x(2);
                            cust(i2).x(2)=cust(i2).x(3);
                            cust(i2).x(3)=cust(i2).x(4);
                            cust(i2).x(4)=cust(i2).x(5);
                            cust(i2).x(5)=-amt;
                        save db1;
                    end
                 end
                 if pp==0
                     disp('wrong acct no or password');
                 end
                 case 3
                fprintf('Your last transactions are:');
                for j=1:5
                    if(cust(i2).x(j)~=0)
                        if(cust(i2).x(j)<0)
                            fprintf('%d is the debit\n',abs(cust(i2).x(j)));
                        else
                            fprintf('%d is the credit\n',cust(i2).x(j));
                        end
                    end
                end
                 end
        end
end