# f(x) = x - cos(x)
# f(0) = -1
# f(1) = 0,45
# f(0) e f(1) devem ter sinais contrarios
#calcula o ponto_medio : 0+1/2 = 0,5
#calcula o sinal de f(0,5) => -0,37
# junta com o amigo de sinal oposto: 0,5 + 1 / 2

#pontos
a = 0; 
b = 1;

limSuperior = 1;
limInferior = 0;
erro = 0.005;
iter = 1;

while(iter < 100)
  if sign(funcao(limSuperior)) != sign(funcao(limInferior))
    limInferior
    limSuperior
    ponto_medio = (limInferior+limSuperior)/2
    
    aux = ponto_medio;
    iter = iter + 1;
    #aux = aux + 1;
    
    if funcao(ponto_medio) == 0 || limSuperior - limInferior < erro
      fprintf('A raiz é: %d\n', ponto_medio);
      fprintf('Numero de iteracoes: %d',iter);
      break
    end
    
    if sign(funcao(ponto_medio)) == sign(funcao(limInferior))
      limInferior = ponto_medio;
    elseif sign(funcao(ponto_medio)) == sign(funcao(limSuperior))
      limSuperior = ponto_medio;
    end   
    
  else
    fprintf('sinais iguais');
    break  
  end
  
end