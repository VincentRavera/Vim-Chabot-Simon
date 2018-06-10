" Vim syntax file
" Language:	FreeFem++
" Mantainer:	Radice David <david.e.pi.3.14@gmail.com>
" Last Change:	2008 Nov 8

if exists("b:current_syntax")
  finish
endif

" Read the C++ syntax 
runtime! syntax/cpp.vim
unlet b:current_syntax

syn keyword FFstorage real func border mesh fespace varf matrix problem complex 

syn keyword FFstatement Cmatrix R3 break continue element else end include load solve string varf vertex 

syn keyword FFfunctionoff BFGS EigenValue LinearCG LinearGMRES NLCG Newtow abs acos acosh adaptmesh arg asin asinh assert atan atan2 atanh average buildmesh buildmeshborder checkmovemesh clock conj convect cos cosh dumptable dx dxx dxy dy dyx dyy emptymesh exec exit exp imag int1d int2d intalledges interplotematrix interpolate jump log log10 max mean min movemesh norm on otherside plot polar pow readmesh savemesh set sin sinh splitsqrt square tan tanh triangulate trunc macro cout cin endl j0 j1 jn y0 y1 yn erf erfc tgamma lgamma processor broadcast

syn keyword FFconstantff CG CPUTime Cholesky Crout GMRES HaveUMFPACK LU N NoUseOfWait P P0 P0edge P1 P1b P1dc P1nc P2 P2b P2dc P2h P2b RT0 RT0Ortho RTmodif UMFPACK area false hTriangle inside label lenEdge nTonEdge nuEdge nuTriangle pi qf1pE qf1pElump qf1pT qf1pTlump qf2pE qf2pT qf2pT4P1 qf3pE qf5pT qf7pT qf9pT region true verbosity version x y z mpisize mpirank

hi def link FFstorage Type 
hi def link FFstatement Statement
hi def link FFfunctionoff Statement
hi def link FFconstantff Constant

let b:current_syntax="edp"
