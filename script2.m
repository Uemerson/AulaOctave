#Criando os pontos
px = [2, 2, 0, 0, 2, 0, 0, 2];
py = [0, 2, 2, 0, 2, 2, 0, 0];
pz = [0, 0, 0, 0, 2, 2, 2, 2];

f1x = [2, 2, 2, 2, 2, 2, 2, 2];
f1y = [0, 2, 2, 2, 2, 0, 0, 0];
f1z = [0, 0, 0, 2, 2, 2, 2, 0];

f2x = [2, 0, 2, 2, 2, 0, 0, 0];
f2y = [2, 2, 2, 2, 2, 2, 2, 2];
f2z = [0, 0, 0, 2, 2, 2, 2, 0];

f3x = [2, 0, 0, 0, 0, 2, 2, 2];
f3y = [2, 2, 2, 0, 0, 0, 0, 2];
f3z = [0, 0, 0, 0, 0, 0, 0, 0];

f4x = [2, 0, 0, 0, 0, 2, 2, 2];
f4y = [2, 2, 2, 0, 0, 0, 0, 2];
f4z = [2, 2, 2, 2, 2, 2, 2, 2]; 

f5x = [2, 0, 0, 0, 0, 2, 2, 2];
f5y = [0, 0, 0, 0, 0, 0, 0, 0];
f5z = [0, 0, 0, 2, 2, 2, 2, 0];

f6x = [0, 0, 0, 0, 0, 0, 0, 0];
f6y = [2, 2, 2, 0, 0, 0, 0, 2];
f6z = [2, 0, 0, 0, 0, 2, 2, 2];

#Desenha o cubo na posi��o inicial
figure(1);
plot3(15, 15, 15);
hold on

title('Posição inicial do cubo');
xlabel('EIXO X');
ylabel('EIXO Y');
zlabel('EIXO Z');

scatter3(px, py, pz, 'r');

plot3(f1x, f1y, f1z);
plot3(f2x, f2y, f2z);
plot3(f3x, f3y, f3z);
plot3(f4x, f4y, f4z);
plot3(f5x, f5y, f5z);
plot3(f6x, f6y, f6z);

#Transladamdo
tx = 2;
ty = -3;
tz = 6;

ptx = px + tx;
pty = py + ty;
ptz = pz + tz;

f1tx = f1x + tx;
f1ty = f1y + ty;
f1tz = f1z + tz;

f2tx = f2x + tx;
f2ty = f2y + ty;
f2tz = f2z + tz;

f3tx = f3x + tx;
f3ty = f3y + ty;
f3tz = f3z + tz;

f4tx = f4x + tx;
f4ty = f4y + ty;
f4tz = f4z + tz;

f5tx = f5x + tx;
f5ty = f5y + ty;
f5tz = f5z + tz;

f6tx = f6x + tx;
f6ty = f6y + ty;
f6tz = f6z + tz;

#Desenha o cubo com a primeira transla��o
#figure(2);
#plot3(15, 15, 15);
hold on

title('Exerc�cio 1 - Primeira transla��o do cubo');
xlabel('EIXO X');
ylabel('EIXO Y');
zlabel('EIXO Z');

scatter3(ptx, pty, ptz, 'g');

plot3(f1tx, f1ty, f1tz);
plot3(f2tx, f2ty, f2tz);
plot3(f3tx, f3ty, f3tz);
plot3(f4tx, f4ty, f4tz);
plot3(f5tx, f5ty, f5tz);
plot3(f6tx, f6ty, f6tz);

#Scala
sx = 5;
sy = 3;
sz = 1;

psx = ptx * sx;
psy = pty * sy;
psz = ptz * sz;

#Aresta
f1sx = f1tx * sx;
f1sy = f1ty * sy;
f1sz = f1tz * sz;

f2sx = f2tx * sx;
f2sy = f2ty * sy;
f2sz = f2tz * sz;

f3sx = f3tx * sx;
f3sy = f3ty * sy;
f3sz = f3tz * sz;

f4sx = f4tx * sx;
f4sy = f4ty * sy;
f4sz = f4tz * sz;

f5sx = f5tx * sx;
f5sy = f5ty * sy;
f5sz = f5tz * sz;

f6sx = f6tx * sx;
f6sy = f6ty * sy;
f6sz = f6tz * sz;

scatter3(psx, psy, psz, 'b');

plot3(f1sx, f1sy, f1sz);
plot3(f2sx, f2sy, f2sz);
plot3(f3sx, f3sy, f3sz);
plot3(f4sx, f4sy, f4sz);
plot3(f5sx, f5sy, f5sz);
plot3(f6sx, f6sy, f6sz);

#Rotacao
#Rota��o
pxr1 = [psx];
pyr1 = [psy];
pzr1 = [psz];

#Calcula a nova coordenada desses pontos

seno = 0.64;
coseno = 0.76; 

tabelaRotacaoEixoY = [
  coseno, 0, -seno; 
  0, 1, 0;
  seno, 0, coseno;
];

#Multiplicando matrix transposta dos pontos
pr1 = tabelaRotacaoEixoY * [pxr1(1), pyr1(1), pzr1(1)]';
pr2 = tabelaRotacaoEixoY * [pxr1(2), pyr1(2), pzr1(2)]';
pr3 = tabelaRotacaoEixoY * [pxr1(3), pyr1(3), pzr1(3)]';
pr4 = tabelaRotacaoEixoY * [pxr1(4), pyr1(4), pzr1(4)]';
pr5 = tabelaRotacaoEixoY * [pxr1(5), pyr1(5), pzr1(5)]';
pr6 = tabelaRotacaoEixoY * [pxr1(6), pyr1(6), pzr1(6)]';
pr7 = tabelaRotacaoEixoY * [pxr1(7), pyr1(7), pzr1(7)]';
pr8 = tabelaRotacaoEixoY * [pxr1(8), pyr1(8), pzr1(8)]';

pfrx = [pr1(1), pr2(1), pr3(1),  pr4(1),  pr5(1),  pr6(1),  pr7(1),  pr8(1)];
pfry = [pr1(2), pr2(2), pr3(2),  pr4(2),  pr5(2),  pr6(2),  pr7(2),  pr8(2)];
pfrz = [pr1(3), pr2(3), pr3(3),  pr4(3),  pr5(3),  pr6(3),  pr7(3),  pr8(3)];

#Rotacionando faces
f1rx = f1sx;
f2rx = f2sx;
f3rx = f3sx;
f4rx = f4sx;
f5rx = f5sx;
f6rx = f6sx;

f1ry = f1sy;
f2ry = f2sy;
f3ry = f3sy;
f4ry = f4sy;
f5ry = f5sy;
f6ry = f6sy;

f1rz = f1sz;
f2rz = f2sz;
f3rz = f3sz;
f4rz = f4sz;
f5rz = f5sz;
f6rz = f6sz;

#Face 1 rota��o
f1r1 = tabelaRotacaoEixoY * [f1rx(1), f1ry(1), f1rz(1)]';
f1r2 = tabelaRotacaoEixoY * [f1rx(2), f1ry(2), f1rz(2)]';
f1r3 = tabelaRotacaoEixoY * [f1rx(3), f1ry(3), f1rz(3)]';
f1r4 = tabelaRotacaoEixoY * [f1rx(4), f1ry(4), f1rz(4)]';
f1r5 = tabelaRotacaoEixoY * [f1rx(5), f1ry(5), f1rz(5)]';
f1r6 = tabelaRotacaoEixoY * [f1rx(6), f1ry(6), f1rz(6)]';
f1r7 = tabelaRotacaoEixoY * [f1rx(7), f1ry(7), f1rz(7)]';
f1r8 = tabelaRotacaoEixoY * [f1rx(8), f1ry(8), f1rz(8)]';

ff1rx = [f1r1(1), f1r2(1), f1r3(1),  f1r4(1),  f1r5(1),  f1r6(1),  f1r7(1),  f1r8(1)];
ff1ry = [f1r1(2), f1r2(2), f1r3(2),  f1r4(2),  f1r5(2),  f1r6(2),  f1r7(2),  f1r8(2)];
ff1rz = [f1r1(3), f1r2(3), f1r3(3),  f1r4(3),  f1r5(3),  f1r6(3),  f1r7(3),  f1r8(3)];

#Face 2 rota��o
f2r1 = tabelaRotacaoEixoY * [f2rx(1), f2ry(1), f2rz(1)]';
f2r2 = tabelaRotacaoEixoY * [f2rx(2), f2ry(2), f2rz(2)]';
f2r3 = tabelaRotacaoEixoY * [f2rx(3), f2ry(3), f2rz(3)]';
f2r4 = tabelaRotacaoEixoY * [f2rx(4), f2ry(4), f2rz(4)]';
f2r5 = tabelaRotacaoEixoY * [f2rx(5), f2ry(5), f2rz(5)]';
f2r6 = tabelaRotacaoEixoY * [f2rx(6), f2ry(6), f2rz(6)]';
f2r7 = tabelaRotacaoEixoY * [f2rx(7), f2ry(7), f2rz(7)]';
f2r8 = tabelaRotacaoEixoY * [f2rx(8), f2ry(8), f2rz(8)]';

ff2rx = [f2r1(1), f2r2(1), f2r3(1),  f2r4(1),  f2r5(1),  f2r6(1),  f2r7(1),  f2r8(1)];
ff2ry = [f2r1(2), f2r2(2), f2r3(2),  f2r4(2),  f2r5(2),  f2r6(2),  f2r7(2),  f2r8(2)];
ff2rz = [f2r1(3), f2r2(3), f2r3(3),  f2r4(3),  f2r5(3),  f2r6(3),  f2r7(3),  f2r8(3)];

#Face 3 rota��o
f3r1 = tabelaRotacaoEixoY * [f3rx(1), f3ry(1), f3rz(1)]';
f3r2 = tabelaRotacaoEixoY * [f3rx(2), f3ry(2), f3rz(2)]';
f3r3 = tabelaRotacaoEixoY * [f3rx(3), f3ry(3), f3rz(3)]';
f3r4 = tabelaRotacaoEixoY * [f3rx(4), f3ry(4), f3rz(4)]';
f3r5 = tabelaRotacaoEixoY * [f3rx(5), f3ry(5), f3rz(5)]';
f3r6 = tabelaRotacaoEixoY * [f3rx(6), f3ry(6), f3rz(6)]';
f3r7 = tabelaRotacaoEixoY * [f3rx(7), f3ry(7), f3rz(7)]';
f3r8 = tabelaRotacaoEixoY * [f3rx(8), f3ry(8), f3rz(8)]';

ff3rx = [f3r1(1), f3r2(1), f3r3(1),  f3r4(1),  f3r5(1),  f3r6(1),  f3r7(1),  f3r8(1)];
ff3ry = [f3r1(2), f3r2(2), f3r3(2),  f3r4(2),  f3r5(2),  f3r6(2),  f3r7(2),  f3r8(2)];
ff3rz = [f3r1(3), f3r2(3), f3r3(3),  f3r4(3),  f3r5(3),  f3r6(3),  f3r7(3),  f3r8(3)];

#Face 4 rota��o
f4r1 = tabelaRotacaoEixoY * [f4rx(1), f4ry(1), f4rz(1)]';
f4r2 = tabelaRotacaoEixoY * [f4rx(2), f4ry(2), f4rz(2)]';
f4r3 = tabelaRotacaoEixoY * [f4rx(3), f4ry(3), f4rz(3)]';
f4r4 = tabelaRotacaoEixoY * [f4rx(4), f4ry(4), f4rz(4)]';
f4r5 = tabelaRotacaoEixoY * [f4rx(5), f4ry(5), f4rz(5)]';
f4r6 = tabelaRotacaoEixoY * [f4rx(6), f4ry(6), f4rz(6)]';
f4r7 = tabelaRotacaoEixoY * [f4rx(7), f4ry(7), f4rz(7)]';
f4r8 = tabelaRotacaoEixoY * [f4rx(8), f4ry(8), f4rz(8)]';

ff4rx = [f4r1(1), f4r2(1), f4r3(1),  f4r4(1),  f4r5(1),  f4r6(1),  f4r7(1),  f4r8(1)];
ff4ry = [f4r1(2), f4r2(2), f4r3(2),  f4r4(2),  f4r5(2),  f4r6(2),  f4r7(2),  f4r8(2)];
ff4rz = [f4r1(3), f4r2(3), f4r3(3),  f4r4(3),  f4r5(3),  f4r6(3),  f4r7(3),  f4r8(3)];

#Face 5 rota��o
f5r1 = tabelaRotacaoEixoY * [f5rx(1), f5ry(1), f5rz(1)]';
f5r2 = tabelaRotacaoEixoY * [f5rx(2), f5ry(2), f5rz(2)]';
f5r3 = tabelaRotacaoEixoY * [f5rx(3), f5ry(3), f5rz(3)]';
f5r4 = tabelaRotacaoEixoY * [f5rx(4), f5ry(4), f5rz(4)]';
f5r5 = tabelaRotacaoEixoY * [f5rx(5), f5ry(5), f5rz(5)]';
f5r6 = tabelaRotacaoEixoY * [f5rx(6), f5ry(6), f5rz(6)]';
f5r7 = tabelaRotacaoEixoY * [f5rx(7), f5ry(7), f5rz(7)]';
f5r8 = tabelaRotacaoEixoY * [f5rx(8), f5ry(8), f5rz(8)]';

ff5rx = [f5r1(1), f5r2(1), f5r3(1),  f5r4(1),  f5r5(1),  f5r6(1),  f5r7(1),  f5r8(1)];
ff5ry = [f5r1(2), f5r2(2), f5r3(2),  f5r4(2),  f5r5(2),  f5r6(2),  f5r7(2),  f5r8(2)];
ff5rz = [f5r1(3), f5r2(3), f5r3(3),  f5r4(3),  f5r5(3),  f5r6(3),  f5r7(3),  f5r8(3)];

#Face 6 rota��o
f6r1 = tabelaRotacaoEixoY * [f6rx(1), f6ry(1), f6rz(1)]';
f6r2 = tabelaRotacaoEixoY * [f6rx(2), f6ry(2), f6rz(2)]';
f6r3 = tabelaRotacaoEixoY * [f6rx(3), f6ry(3), f6rz(3)]';
f6r4 = tabelaRotacaoEixoY * [f6rx(4), f6ry(4), f6rz(4)]';
f6r5 = tabelaRotacaoEixoY * [f6rx(5), f6ry(5), f6rz(5)]';
f6r6 = tabelaRotacaoEixoY * [f6rx(6), f6ry(6), f6rz(6)]';
f6r7 = tabelaRotacaoEixoY * [f6rx(7), f6ry(7), f6rz(7)]';
f6r8 = tabelaRotacaoEixoY * [f6rx(8), f6ry(8), f6rz(8)]';

ff6rx = [f6r1(1), f6r2(1), f6r3(1),  f6r4(1),  f6r5(1),  f6r6(1),  f6r7(1),  f6r8(1)];
ff6ry = [f6r1(2), f6r2(2), f6r3(2),  f6r4(2),  f6r5(2),  f6r6(2),  f6r7(2),  f6r8(2)];
ff6rz = [f6r1(3), f6r2(3), f6r3(3),  f6r4(3),  f6r5(3),  f6r6(3),  f6r7(3),  f6r8(3)];


scatter3(pfrx, pfry, pfrz, 'c');

plot3(ff1rx, ff1ry, ff1rz);
plot3(ff2rx, ff2ry, ff2rz);
plot3(ff3rx, ff3ry, ff3rz);
plot3(ff4rx, ff4ry, ff4rz);
plot3(ff5rx, ff5ry, ff5rz);
plot3(ff6rx, ff6ry, ff6rz);
