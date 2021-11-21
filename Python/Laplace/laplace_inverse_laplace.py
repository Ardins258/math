import sympy as sym
from sympy.abc import s, t, x, y, z
from sympy.integrals import laplace_transform as LT
from sympy.integrals import inverse_laplace_transform as ILT

# Laplace transform ( time space to s space )

Laplace_trans = LT(t, t, s) # Arguments: t**1, from "t" to "s"
print(Laplace_trans[0])

Laplace_trans2 = LT(t**2, t, s) # Laplace transform of t**2
print(Laplace_trans2[0])

Laplace_sin = LT(sym.sin(5*t), t, s) # Sin Laplace T
print(Laplace_sin[0])

Laplace_cos = LT(sym.cos(3*t), t, s) # Cos Laplace T
print(Laplace_cos[0])

# Inverse Laplace transform

Inverse_sin = ILT((5/s**2 + 25), s, t)
print(Inverse_sin)
 
