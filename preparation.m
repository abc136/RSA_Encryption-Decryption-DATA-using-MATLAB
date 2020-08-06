%preparation
clc;clear all;
p=vpi('22953686867719691230002707821868552601124472329079');
q=vpi('15452417011775787851951047309563159388840946309807');
n=p*q;
phi=(p-1)*(q-1);
e=65537;
if gcd(e,phi)~=1
disp('e & phi(n) are not coprime!');
end
d=minv(e,phi);
m=vpi('9999');
if m>=n
    disp('m must be smaller than n!');
end

c=encrypt (m, e, n); %encryption process
message=decrypt (c, d, n);  %decryption process

if m~=message
    disp('there is an error!');
else
    disp('very good!');
end