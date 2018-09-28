%{
Algoritmo do M�todo da Posi��o Falsa
In�cio
Se f(a) * f(b) < 0 Ent�o
In�cio
x ? ( a * f(b) + b * f(a) ) / ( f(b) � f(a) )
Enquanto ( | f( x ) | > epsilon E | b � a | > epsilon ) Fa�a
In�cio
Se f(a) * f(b) < 0 Ent�o
a ? x
Sen�o
b ? x
x ? ( a * f(b) + b * f(a) ) / ( f(b) � f(a) )
Fim-Enquanto
Escreva(�A raiz do intervalo dado � �, x )
Fim-Se
Sen�o
Escreva(�N�o h� ra�zes no intervalo dado.�)
Fim
Vari�veis utilizadas no algoritmo:
� Reais: x, a, b, epsilon.
OBS: a e b s�o, respectivamente, o ponto inicial e o ponto final do intervalo, f � a
fun��o definida e epsilon � a precis�o fornecida.
%}

#pontos do intervalo
a = 0.5
b = 1
epsilon = 0.005;
aux = 1;


if funcao(a) * funcao(b) <0
  x = ( (a * abs(funcao(b))) - (b * abs(funcao(a))) ) / ( abs(funcao(b)) - abs(funcao(a)) );
  fprintf('A raiz do intervalo dado eh %d\n', x );
  while  aux < 10000
      aux = aux + 1;
      if funcao(a) * funcao(b) < 0
        a = x;
      elseif
        b = x;
      end
      x = ((a * abs(funcao(b))) - (b * abs(funcao(a))) ) / ( abs(funcao(b)) - abs(funcao(a)));
      if abs(funcao(x)) < epsilon
          fprintf('A raiz do intervalo dado eh %d\n', x );
          fprintf('numero de pssos %d\n',aux);
          break
      end
  end
else
  fprintf('Sinais iguais');
endif






















