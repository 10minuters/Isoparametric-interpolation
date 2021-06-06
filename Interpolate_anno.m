clc; clear all
sol=fsolve(@Tolocal,[0;0]);
zai=sol(1)
eta=sol(2)

N1=0.25*(zai-1)*(eta-1);
N2=-0.25*(zai+1)*(eta-1);
N3=0.25*(zai+1)*(eta+1);
N4=-0.25*(zai-1)*(eta+1);

T1=5; T2=10; T3=-2; T4=3;
T=N1*T1+N2*T2+N3*T3+N4*T4


function F=Tolocal(z)
zai=z(1);
eta=z(2);

X1=3;Y1=2;
X2=8;Y2=1.8;
X3=7;Y3=5;
X4=4;Y4=6;


N1=0.25*(zai-1)*(eta-1);
N2=-0.25*(zai+1)*(eta-1);
N3=0.25*(zai+1)*(eta+1);
N4=-0.25*(zai-1)*(eta+1);


F(1)=N1*X1+N2*X2+N3*X3+N4*X4-4.5;
F(2)=N1*Y1+N2*Y2+N3*Y3+N4*Y4-4;

end

