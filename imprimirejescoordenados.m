function imprimirejescoordenados();
line ([-20 20],[0 0],[0 0], 'color', [1 0 0], 'linewidth',1); %Establece el eje X Rojo 
line ([0 0],[-20 20],[0 0], 'color', [0 1 0], 'linewidth',1); %Establece el eje Y Verde 
line ([0 0],[0 0],[-20 20], 'color', [0 0 1], 'linewidth',1); %Establece el eje Z Azul 
end
