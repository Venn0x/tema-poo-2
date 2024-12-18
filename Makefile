# Compiler settings
CXX := g++
CXXFLAGS := -Wall -std=c++17
TARGET := tema2_poo

# Source files
SRCS := *.cpp
OBJS := $(SRCS:.cpp=.o)

# Rule to build the target (executable)
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile individual source files into object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@
	
all: $(TARGET)
	./$(TARGET) rachete.csv asteroizi.csv piata.csv

# Clean-up rules
clean:
	rm -f $(TARGET) $(OBJS)

run: $(TARGET)
	./$(TARGET) rachete.csv asteroizi.csv piata.csv

.PHONY: all clean run
