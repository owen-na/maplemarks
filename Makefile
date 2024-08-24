JAVAC = javac
SRC_DIR = src
BIN_DIR = bin

MAIN_SOURCE = $(SRC_DIR)/main/Main.java

MAIN_CLASS = $(BIN_DIR)/main/Main.class

all: $(MAIN_CLASS)

$(MAIN_CLASS): $(MAIN_SOURCE)
	@mkdir -p $(BIN_DIR)/main
	$(JAVAC) -d $(BIN_DIR) $(MAIN_SOURCE)

clean:
	@rm -rf $(BIN_DIR)

run: all
	@java -cp $(BIN_DIR) main.Main

.PHONY: all clean run
