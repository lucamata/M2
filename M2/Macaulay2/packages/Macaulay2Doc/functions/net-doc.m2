--- status: TODO
--- author(s): 
--- notes: 

undocumented {
	  (net, Adjacent),
	  (net, Array),
	  (net, Bag),
	  (net, BasicList),
	  (net, BinaryOperation),
	  (net, Boolean),
	  (net, CC),
	  (net, CODE),
	  (net, ChainComplex),
	  (net, ChainComplexMap),
	  (net, CoherentSheaf),
	  (net, Command),
	  (net, Constant),
	  (net, Database),
	  (net, Divide),
	  (net, DocumentTag),
	  (net, Equation),
	  (net, File),
	  (net, FilePosition),
	  (net, Function),
	  (net, FunctionApplication),
	  (net, FunctionBody),
	  (net, GaloisField),
	  (net, GeneralOrderedMonoid),
	  (net, GradedModule),
	  (net, GradedModuleMap),
	  (net, GroebnerBasis),
	  (net, HEADER1),
	  (net, HEADER2),
	  (net, HEADER3),
	  (net, HR),
	  (net, HREF),
	  (net, HashTable),
	  (net, Holder),
	  (net, IMG),
	  (net, Ideal),
	  (net, IndeterminateNumber),
	  (net, IndexedVariable),
	  (net, InexactField),
	  (net, InfiniteNumber),
	  (net, List),
	  (net, MENU),
	  (net, Manipulator),
	  (net, Hypertext),
	  (net, Matrix),
	  (net, MatrixExpression),
	  (net, Minus),
	  (net, Module),
	  (net, MultigradedBettiTally),
	  (net, MutableHashTable),
	  (net, MutableList),
	  (net, MutableMatrix),
	  (net, Net),
	  (net, NonAssociativeProduct),
	  (net, Nothing),
	  (net, NumberedVerticalList),
	  (net, Option),
	  (net, PRE),
	  (net, Package),
	  (net, Power),
	  (net, Product),
	  (net, ProjectiveHilbertPolynomial),
	  (net, QQ),
	  (net, Parenthesize),
	  (net, Descent),
	  (net, CacheFunction),
	  (net, IndexedVariableTable),
	  (net, RR),
	  (net, RingElement),
	  (net, RingMap),
	  (net, RowExpression),
	  (net, SUB),
	  (net, SUP),
	  (net, ScriptedFunctor),
	  (net, Sequence),
	  (net, Set),
	  (net, SheafOfRings),
	  (net, SparseMonomialVectorExpression),
	  (net, SparseVectorExpression),
	  (net, Subscript),
	  (net, Sum),
	  (net, SumOfTwists),
	  (net, Superscript),
	  (net, Symbol),
	  (net, TABLE),
	  (net, TITLE),
	  (net, TO),
	  (net, TO2),
	  (net, TOH),
	  (net, TT),
	  (net, Table),
	  (net, VirtualTally),
	  (net, Thing),
	  (net, Time),
	  (net, Type),
	  (net, UL),
	  (net, Variety),
	  (net, Vector),
	  (net, VerticalList),
	  (net, ZZ),
	  (net, BettiTally),
	  (net, COMMENT),
	  (net, HypertextContainer),
	  (net, EngineRing),
	  (net, MapExpression),
	  (net, MatrixDegreeExpression),
	  (net, SheafExpression),
	  (net, VectorExpression)
	  }

document {
     Key => (net, String),
     Headline => "convert a string to a net",
     Usage => "net s",
     Inputs => { "s" },
     Outputs => { { "the net formed by stacking the lines of the string ", TT "x", " vertically"} },
     PARA {
	  "Tab characters are converted to spaces, with a tab stop at every 8-th column."
	  },
     PARA {
     	  "In the following examples we can use ", TT "peek", " to see the exact shape of the nets produced."
	  },
     EXAMPLE {
      	  ///net "line 1\nline 2\nline 3\n"///,
	  "peek oo",
      	  ///net ""///,
	  "peek oo",
      	  ///net "\n"///,
	  "peek oo",
      	  ///net "\n\n\ta"///,
	  "peek oo"	  
	  },
     SeeAlso => {peek}
     }

document {
     Key => net, 
     Headline => "format for printing, as a net",
     Usage => "net x",
     Inputs => { "x" },
     Outputs => { { "a net obtained by formatting ", TT "x", " for printing" } },
     PARA{},
     "This function is the primary function called upon by ", TO "<<", " to
     format expressions for printing.  The default method provided by the
     system is to convert ", TT "x", " to an ", TO "Expression", " with 
     ", TO "expression", " and then to convert that to a net.",
     PARA{},
     "A new method for formatting expressions of class ", TT "X", " may be
     installed by the user with code of the form ", TT "net X := x -> ...", ".
     The function provided by the user should return a net or a string.",
     PARA{},
     "There are various such methods for formatting, but we don't document
     them separately."
     }
