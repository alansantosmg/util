estrelas = ["cassiopeia", "betlejeuce", "sirius", "polaris", "alpha-centauri"]
e = enumerate(estrelas)
print(type(e))
print(e,"\n")


e_list = list(e)
e_dic = dict(e)

print(e_list, "\n")

# using enumerate to print a numbered list of itens
for k,v in enumerate(estrelas):
    print(k,v)
print()

for k, v in enumerate(estrelas, start=10):
    print(k,v)
print()


