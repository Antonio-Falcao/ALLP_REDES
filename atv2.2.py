Nota1 = float (input('Digite sua primeira nota'))
while Nota1 < 0 or Nota1 > 10:
    print('Nota inválida')
    Nota1 = float (input('Digite sua primeira nota'))

Nota2 = float (input('Digite sua segunda nota'))
while Nota2 < 0 or Nota2 > 10:
    print('Nota inválida')
    Nota2 = float (input('Digite sua segunda nota'))    

Media = ((Nota1 + Nota2)/2)
print(Media)
if Media >= 6:
    print('PARABÉNS VOCÊ FOI APROVADO')
elif Media < 6:
    print('SENTIMOS MUITO VOCÊ FOI REPROVADO')


