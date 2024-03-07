p=12659765344651740648724763467724826993725936263366951091039118416195292099370631377712042960634433459603684366298668316118798753725083109726606307230709481
A=3301451331273103822833339817189898484477574460332521541023442766617163003861277567173209945681794302860954824946103841799431004692332025577336344394695314
B=4585794959794770660643739179463936175470737153250504109915159478661133411133496952267060123069524419032124459912888910847574766484421490926652243218962165
r1=2568748433813321161874639775621008976218176085243148442053880160521563872123950485879781803171876295709491228751046125319137014580919198982132588104122368
c=13305825506775525477695274133373660177357107668926266252207560823721404224069651345842091298405541700114875323083835571095924844005731356668708175418706451
AC=7245241643057289361660908682282370311759108862519890618466911853745311287850476739612486696335989486506224784314474292337315512082870292214611222140900864
r2=3829741721947473719324421527352078984331611168371079834096760630101921404398331513243772077101441758022492336098369985623504441570880895898971858238701568

t = pow(B,c,p)
K = pow(2,255,p)
t_1 = pow(t,-1,p)
u = (r1-t_1*r2) % p

from sage.modules.free_module_integer import IntegerLattice

def lll_reduction(matrix):
    """
    Apply the LLL algorithm to reduce the given lattice basis.
    
    Parameters:
    - matrix: Matrix whose columns form a basis for the lattice.
    
    Returns:
    - Reduced matrix using LLL algorithm.
    """
    lattice = IntegerLattice(matrix)
    reduced_basis = lattice.LLL()

    return reduced_basis

# Example usage:
# Define your matrix whose columns form the lattice basis
matrix = Matrix(ZZ, [[p, 0, 0], [t_1, 1, 0], [u, 0, K]])

# Apply LLL algorithm
reduced_matrix = lll_reduction(matrix)

# Print the result
print("Original Matrix:")
print(matrix)
print("\nReduced Matrix using LLL algorithm:")
print(reduced_matrix)
