a = 0.5;
b = 1;
tolerancia = 0.005;
iterMax = 1000;

i = 1;


 
while(i< iterMax)

  x = ( (a * funcao(b)) + (b * funcao(a)) ) / ( funcao(b) - funcao(a) );
  funcao(x)
  
  if(funcao(x) = 0 || b-a < tolerancia)
    fprintf('A raiz do intervalo dado eh %d\n', x );
  end
  
  i = i + 1;
  
  if(funcao(a) * funcao(x) > 0 )
    a = x;
  else
    b = x;
  end
  
end