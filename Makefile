LOP ?=

all:
	ctypesgen -L$(LOP)/ -llop $(LOP)/include/*.h -o LOP.py

clean:
	rm -f LOP.py
	rm -fr __pycache__
	rm -f a.out
