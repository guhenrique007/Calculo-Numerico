#inputs
x0 = 3
x1 = 2
tolerancia = 0.0005
iter = 1;

while iter < 7
  #metodo
  x = ( (x0 * funcao(x1)) - (x1 * funcao(x0)) )/ (funcao(x1) - funcao(x0)); 
  #fprintf('A raiz aproximada em %d\n', x );
  
  #loop
  if abs(x - x1) <= tolerancia
    fprintf('A raiz aproximada em %d\n', x );
    fprintf('Encontrado com  %d iteracoes\n', iter );
    break
  else
    x0 = x1;
    x1 = x;
  endif
  iter = iter + 1;
end
