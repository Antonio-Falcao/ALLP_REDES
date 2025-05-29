#Projeto Biblioteca Virtual (Projeto Integrador)

print("""+=============================+
| BBIBLIOTECA VIRTUAL ETEPLAP |
+=============================+""")

L001 = "Texto referente ao livro O Senhor dos Anéis - A Sociedade do Anel"
L002 = "Texto referente ao livro O Senhor dos Anéis - As Duas Torres"
L003 = "Texto referente ao livro O Senhor dos Anéis - O Retorno do Rei"
L004 = "Texto referente ao livro A Saga Crepúsculo - Crepúsculo"
L005 = "Texto referente ao livro A Saga Crepúsculo - Lua Nova"
L006 = "Texto referente ao livro A Saga Crepúsculo - Eclipse"
L007 = "Texto referente ao livro A Saga Crepúsculo - Amanhecer"
L008 = "Texto referente ao livro O Hobbit - Uma Jornada Inesperada"
L009 = "Texto referente ao livro O Hobbit - A Desolação de Smaug"
L010 = "Texto referente ao livro O Hobbit - A Batalha dos Cinco Exércitos"

osenhordosaneis1 = L001
osenhordosaneis2 = L002
osenhordosaneis3 = L003
asagacrepusculo1 = L004
asagacrepusculo2 = L005
asagacrepusculo3 = L006
asagacrepusculo4 = L007
ohobbit1 = L008
ohobbit2 = L009
ohobbit3 = L010

busca_livro = input("Digite o título do livro:")
if busca_livro == "osenhordosaneis1":
    print(L001)
elif busca_livro == "osenhordosaneis2":
    print(L002)
elif busca_livro == "osenhordosaneis3":
    print(L003)
elif busca_livro == "asagacrepusculo1":
    print(L004)
elif busca_livro == "asagacrepusculo2":
    print(L005)
elif busca_livro == "asagacrepusculo3":
    print(L006)
elif busca_livro == "asagacrepusculo4":
    print(L007)
elif busca_livro == "ohobbit1":
    print(L008)
elif busca_livro == "ohobbit2":
    print(L009)
elif busca_livro == "ohobbit3":
    print(L010)
else:
    print("SENTIMOS MUITO - O livro pesquisado não faz parte do nosso acervo!")