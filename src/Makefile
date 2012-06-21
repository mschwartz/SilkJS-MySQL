OBJ=mysql.o

V8LIB_DIR=/usr/local/silkjs/src/v8

CCFLAGS=-fPIC -I/usr/local/silkjs/src -I$(V8LIB_DIR)/include

V8LIB_DIR=/usr/local/silkjs/src/v8

V8=	$(V8LIB_DIR)/libv8_base.a $(V8LIB_DIR)/libv8_snapshot.a

.cpp.o:
	g++ -c $(CCFLAGS) -o $*.o $*.cpp

all:	$(OBJ)
	gcc -shared -Wl,-soname,mysql_module.so -o mysql_module.so $(OBJ) -lmysqlclient -L$(V8LIB_DIR) -lv8 

clean:
	@rm src/*.o
