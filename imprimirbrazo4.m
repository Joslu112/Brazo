function imprimirbrazo4(objeto,r4,g4,b4);
P3 = objeto(:,1);
P4 = objeto(:,2);
line ([P3(1) P4(1)],[P3(2) P4(2)],[P3(2) P4(2)], 'color', [r4 g4 b4], 'linewidth',3);
end