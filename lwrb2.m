function [out,x0,str,ts]=lwrb2(t,x,u,flag,n,m,p,k,tol,T)


if flag==0,
   
   out=[0 (n+m)*(m+p) m*(m+p) (m+p) 0 0 1];
   x0=[zeros((m+n)*(m+p),1)];
   str='';
   ts=T;
   
   
elseif flag==2,
   
   % extract from state
   yX=reshape(x(1:n*(m+p)),n,m+p);
   X=yX(:,1:m);Y=yX(1:n,m+[1:p]);nR=reshape(u,1,m+p);
   
   % weight
   d2=sum((([X;nR(1,1:m)]-ones(n+1,1)*nR(1,1:m)).^2)')';
   W=diag(exp(-d2(1:n)/(2*k*k)));WX=W*X;WY=W*Y;
   
   % svd : pseudoinverse and row to be deleted
   [U,S,V]=svd(WX'*WX);iS=diag((diag(S)>tol)./(diag(S)+1e-30));iX=V*iS*U';
   [b,id]=max(diag(WX*V*iS*iS*V'*WX')./(diag(WX*V*iS*V'*WX'-eye(n))+1e-30));
   
   % new data matrix
   yX=[yX(1:id-1,:);nR;yX(id+1:n,:)];
   
   % theta and covariance
   th=iX*WX'*WY;
   cv=mean(diag((Y-X*th)'*(Y-X*th)/(n-m)/p))*iX*WX'*W*W*WX*iX;
   
   % next state
   upd=[reshape(yX,n*(m+p),1);reshape(th,m*p,1);reshape(cv,m*m,1)];
   
elseif flag==3,
   
   out=x((n*(m+p)+1):((n+m)*(m+p)));
   
else
   out=[];
end
