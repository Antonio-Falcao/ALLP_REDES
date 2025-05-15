Alunos = {'Ana': 8.5, 'Pedro': 7.0, 'Maria': 9.2}
Alunos['Carlos'] = 6.5
Alunos['Ana'] = 9.0
del Alunos['Pedro']
Soma_notas = sum(Alunos.values())
Numero_alunos = len(Alunos)
Media = Soma_notas / Numero_alunos
Media = round(Media, 2)
print(Media)
if 'Maria' in Alunos:
    print("Esse aluno faz parte do nosso corpo discente! Sua nota é:")
    print(Alunos.get('Maria'))
else:
    print("Esse aluno não faz parte do nosso corpo discente!")