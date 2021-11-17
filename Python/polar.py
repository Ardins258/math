
import numpy as np
import matplotlib.pylab as plt

def T(theta,a,b):        
    return a*np.sin(theta*b)   

def R(r,c,d):
    return c*np.cos(r*d)

rlist=np.arange(0,4.01,0.01)   #Angstroms
thetalist=np.radians(np.arange(0,361,1)) #Radians
rmesh, thetamesh = np.meshgrid(rlist, thetalist) #Generate a mesh

a = 1.5
b = 2
c = 2
d = 1.6

FullFunction = T(thetamesh,a,b)*R(rmesh,c,d)
FullFunction2 = FullFunction**2*rlist**2

fig, ax = plt.subplots(dpi=120,subplot_kw=dict(projection='polar'))
ax.contourf(thetamesh, rmesh, FullFunction, 100, cmap='plasma')

fig, ax = plt.subplots(dpi=120,subplot_kw=dict(projection='polar'))
ax.contourf(thetamesh, rmesh, FullFunction2, 100, cmap='plasma')
