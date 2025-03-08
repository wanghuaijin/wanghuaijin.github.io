function [varargout]=jagsrd1(n,alp,bet)
% n nodes Jacobi Gauss-Radau quadrature with x0 = -1 fixed
% n = 1,2,...

if n<=0, disp('Input n >=1'); varargout{1}='Wrong input';  return; end

if n==1
    varargout{1} = -1;
    w0=(alp+bet+1)*log(2)+2*gammaln(bet+1)+gammaln(n)+gammaln(n+alp)...
        -gammaln(n+bet+1)-gammaln(n+alp+bet+1);
    w0=(bet+1)*exp(w0);
    varargout{2} = w0;
    return;
end

[x,w]=jags(n-1,alp,bet+1);

varargout{1}=[-1;x]; 

w0=(alp+bet+1)*log(2)+2*gammaln(bet+1)+gammaln(n)+gammaln(n+alp)...
    -gammaln(n+bet+1)-gammaln(n+alp+bet+1);
w0=(bet+1)*exp(w0);
  
w = w./(x-(-1));
varargout{2} = [w0; w];