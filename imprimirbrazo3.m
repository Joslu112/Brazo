function imprimirbrazo3(objeto,r3,g3,b3);
P2 = objeto(:,1);
P3 = objeto(:,2);
line ([P2(1) P3(1)],[P2(2) P3(2)],[P2(2) P3(2)], 'color', [r3 g3 b3], 'linewidth',3);
end