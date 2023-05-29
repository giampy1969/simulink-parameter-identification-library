
% reshapes the second dimension of theta into
% a 3 by 2 matrix, which is then transposed
th1=permute(reshape(theta1,size(t,1),3,2),[1 3 2]);
th2=permute(reshape(theta2,size(t,1),3,2),[1 3 2]);
th3=permute(reshape(theta3,size(t,1),3,2),[1 3 2]);
th4=permute(reshape(theta4,size(t,1),3,2),[1 3 2]);

% plots each element of [A B] along with its estimated values
figure,plot(t,alg(1,1)*sign(t),'k:',t,squeeze(th1(:,1,1)),'g',t,squeeze(th2(:,1,1)),'b',t,squeeze(th3(:,1,1)),'r',t,squeeze(th4(:,1,1)),'m'),ylabel('a11'),axis([0 15 -3 0])
legend('REAL','RLS','LWR','FTR','TD-FTR');

figure,plot(t,alg(1,2)*sign(t),'k:',t,squeeze(th1(:,1,2)),'g',t,squeeze(th2(:,1,2)),'b',t,squeeze(th3(:,1,2)),'r',t,squeeze(th4(:,1,2)),'m'),ylabel('a12'),axis([0 15 0 2])
legend('REAL','RLS','LWR','FTR','TD-FTR');

figure,plot(t,blg(1,1)*sign(t),'k:',t,squeeze(th1(:,1,3)),'g',t,squeeze(th2(:,1,3)),'b',t,squeeze(th3(:,1,3)),'r',t,squeeze(th4(:,1,3)),'m'),ylabel('b1'),axis([0 15 -3 3])
legend('REAL','RLS','LWR','FTR','TD-FTR');

figure,plot(t,alg(2,1)*sign(t),'k:',t,squeeze(th1(:,2,1)),'g',t,squeeze(th2(:,2,1)),'b',t,squeeze(th3(:,2,1)),'r',t,squeeze(th4(:,2,1)),'m'),ylabel('a21'),axis([0 15 -20 10])
legend('REAL','RLS','LWR','FTR','TD-FTR');

figure,plot(t,alg(2,2)*sign(t),'k:',t,squeeze(th1(:,2,2)),'g',t,squeeze(th2(:,2,2)),'b',t,squeeze(th3(:,2,2)),'r',t,squeeze(th4(:,2,2)),'m'),ylabel('a22'),axis([0 15 -20 10])
legend('REAL','RLS','LWR','FTR','TD-FTR');

figure,plot(t,blg(2,1)*sign(t),'k:',t,squeeze(th1(:,2,3)),'g',t,squeeze(th2(:,2,3)),'b',t,squeeze(th3(:,2,3)),'r',t,squeeze(th4(:,2,3)),'m'),ylabel('b2'),axis([0 15 -20 10])
legend('REAL','RLS','LWR','FTR','TD-FTR');
