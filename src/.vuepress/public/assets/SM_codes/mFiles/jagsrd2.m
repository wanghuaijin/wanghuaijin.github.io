function [varargout]=jagsrd2(n,alp,bet)
% n nodes Jacobi Gauss-Radau quadrature with xN = 1 fixed
% n = 1,2,...

if n<=0, disp('Input n >=1'); varargout{1}='Wrong input';  return; end

if n==1
    varargout{1} = 1;
    wN=(alp+bet+1)*log(2)+2*gammaln(bet+1)+gammaln(n)+gammaln(n+alp)...
        -gammaln(n+bet+1)-gammaln(n+alp+bet+1);
    wN=(bet+1)*exp(wN);
    varargout{2} = wN;
    return;
end

[x,w]=jags(n-1,alp+1,bet);

varargout{1}=[x;1]; 

% swap alp and bet
c = alp;
alp = bet;
bet = c;

wN=(alp+bet+1)*log(2)+2*gammaln(bet+1)+gammaln(n)+gammaln(n+alp)...
    -gammaln(n+bet+1)-gammaln(n+alp+bet+1);
wN=(bet+1)*exp(wN);
  
w = w./(1-x);
varargout{2} = [w; wN];