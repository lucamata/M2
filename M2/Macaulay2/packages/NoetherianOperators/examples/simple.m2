-- simple example showcasing all options
restart
debug loadPackage ("NoetherianOperators", Reload => true)
R = QQ[x,t,y]
I = ideal(x^2, y^2 - x*t)
P = ideal(y,x)
p = point{{0_CC, 12, 0}}
debugLevel = 1

noetherianOperators(I, Strategy => "Hybrid")
noetherianOperators(I, Strategy => "MacaulayMatrix")
noetherianOperators(I, Strategy => "PunctualHilbert")

numericalNoetherianOperators(I, DependentSet => {x,y})