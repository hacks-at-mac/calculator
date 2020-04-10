calculator: y.tab.c lex.yy.c
	gcc y.tab.c -ly -ll -lm -o calculator

lex.yy.c: calculator.l
	lex calculator.l

y.tab.c: calculator.y
	yacc calculator.y
