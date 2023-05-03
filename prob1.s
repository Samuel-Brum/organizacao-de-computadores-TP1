.data
vetor: .word 0 0 0 0 // vetor = [0,0,0,0]
##### START MODIFIQUE AQUI START #####
# Este espaço eh para você definir as suas constantes e vetores auxiliares.
li a3, 2 // primeiro primo
##### END MODIFIQUE AQUI END #####
.text
main:
add s0, zero, zero // s0 = 0;
#Teste 1
addi a0, zero, 5 // a0 = 5;
addi a1, zero, 7 // a1 = 7;
la a2, vetor // a2 = [0,0,0,0];
jal ra, primos // ra = primos();
addi t0, zero, 2 // t0 = 2;
beq t0, a0, OK1 // if (t0 == a0) {GOTO OK1};
beq zero, zero, T2 // if (TRUE) {GOTO T2};
OK1: addi s0, s0, 1 # Teste ok, passou
#Teste 2
T2: addi a0, zero, 1 // a0 = 1;
addi a1, zero, 6 // a1 = 6;
la a2, vetor // a2 = [0,0,0,0];
jal ra, primos // ra = primos();
addi t0, zero, 3 // t0 = 3;
beq t0, a0, OK2 // if (t0 == a0) {GOTO OK2}
beq zero, zero, FIM // GOTO FIM
OK2: addi s0, s0, 1 # Teste ok, passou
beq zero, zero, FIM // GOTO FIM
##### START MODIFIQUE AQUI START #####
primos: jalr zero, 0(ra)
##### END MODIFIQUE AQUI END #####
FIM: add zero, zero, zero // 
#Final da execucao, s0 deve ter o valor igual a 2.