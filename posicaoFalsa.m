%{
Algoritmo do Método da Posição Falsa
Início
Se f(a) * f(b) < 0 Então
Início
x ? ( a * f(b) + b * f(a) ) / ( f(b) – f(a) )
Enquanto ( | f( x ) | > epsilon E | b – a | > epsilon ) Faça
Início
Se f(a) * f(b) < 0 Então
a ? x
Senão
b ? x
x ? ( a * f(b) + b * f(a) ) / ( f(b) – f(a) )
Fim-Enquanto
Escreva(‘A raiz do intervalo dado é ’, x )
Fim-Se
Senão
Escreva(‘Não há raízes no intervalo dado.’)
Fim
Variáveis utilizadas no algoritmo:
• Reais: x, a, b, epsilon.
OBS: a e b são, respectivamente, o ponto inicial e o ponto final do intervalo, f é a
função definida e epsilon é a precisão fornecida.
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






















