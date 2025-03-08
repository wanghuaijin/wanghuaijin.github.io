% x=jagslb(n,alp,bet) computes n nodes of the Jacobi-Gauss-Lobatto quadrature with parameter (alp,bet)
% by using the eigen-method 
% [x,w]= jagslb(n,alp,bet) also returns the weights
% Use the function japoly() and jags()
% Last modified on September 4, 2011


function [varargout]=jagslb(n,alp,bet)

if n<2, disp('Input n >=2'); varargout{1}='Wrong input'; return; end

apb=alp+bet;
 
if n==2
    varargout{1}=[-1;1]; 
    varargout{2}=[exp((apb+1)*log(2)+log(bet+1)+gammaln(alp+2)-gammaln(apb+3));...
        exp((apb+1)*log(2)+log(alp+1)+gammaln(bet+2)-gammaln(apb+3))];
    return; 
end

x=jags(n-2,alp+1,bet+1); % Compute the interior nodes by using the eigen-method
   
varargout{1}=[-1;x;1];               %  Return n nodes  
if nargout==1, return;end

  gn=(apb+5)*log(2)+gammaln(n+alp)+gammaln(n+bet)-gammaln(n-1)-gammaln(n+apb+2)-log(n+apb+1);
  gn=exp(gn);                            % Constant in the weight expression
  [dy,y]=japoly(n-3,alp+2,bet+2,x);              % Compute derivative of Jacobi polynomial of degree n-2 
                                         % at nodes 
  w=gn./((1-x.^2).^2.*y.^2);            % Compute the interior  weights 
  w0=(apb+1)*log(2)+log(bet+1)+2*gammaln(bet+1)+gammaln(n-1)+gammaln(n+alp)...
    -gammaln(n+bet)-gammaln(n+apb+1);
  w0=exp(w0);                            % Weight corresponding to x=-1;
  
  wn=(apb+1)*log(2)+log(alp+1)+2*gammaln(alp+1)+gammaln(n-1)+gammaln(n+bet)...
    -gammaln(n+alp)-gammaln(n+apb+1);
  wn=exp(wn);                            % Weight corresponding to x=1;
  
 varargout{2} =[w0;w;wn];