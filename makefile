CXX       := g++
CXX_FLAGS := -Wall -Wextra -std=c++11

BIN     := bin
SRC     := src
INCLUDE :=  /usr/include/SFML -I include 
LIB     := lib
LIBRARIES   := -lsfml-graphics -lsfml-window -lsfml-system
EXECUTABLE  := main
DLL	:= mydll.dll


all: $(BIN)/$(EXECUTABLE)

run: clean all
	@echo "๐ Executing..."
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	@echo "๐ง Building..."
	$(CXX) $(CXX_FLAGS) -I $(INCLUDE) -L $(LIB) $^ -o  $@ $(LIBRARIES) 

clean:
	@echo "๐งน Clearing..."
	-rm $(BIN)/* 
 
 
