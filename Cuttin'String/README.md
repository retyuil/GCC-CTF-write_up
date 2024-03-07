
# Cuttin'String

Dans ce challenge de type pwn, on nous donne un programme nous permettant de couper une chaîne de caractères pour lui donner la longueur souhaitée.

En lisant le programme, on se rend compte que la taille du buffer pour stocker la chaîne de l'utilisateur est de 512 octets. En entrant une chaîne de 523 octets, on arrive à réécrire l'adresse de retour d'une fonction et on peut contrôler le registre rip.

J'ai tout d'abord essayé de faire un ROP avec les gadgets présents dans le programme, mais ils sont trop peu nombreux. La solution était de faire un SROP, mais je ne connaissais pas cette technique avant le CTF.

