#inputs
x0 = 1;
tolerancia = 0.0005;
iter = 1;

while iter < 7
  #metodo
  x = x0 - (funcao(x0)) / (funcaoDerivada(x0)); 
  fprintf('A raiz aproximada em %d\n', x );
  
  #loop
  if abs(x - x0) <= tolerancia
    fprintf('A raiz aproximada em %d\n', x );
    fprintf('Encontrado com  %d iteracoes\n', iter );
    break
  else
    x0 = x;
  endif
  iter = iter + 1;
end