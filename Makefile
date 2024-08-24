JAVAC = javac
SRC_DIR = src
BIN_DIR = bin

SOURCES = $(shell find $(SRC_DIR) -name "*.java")

CLASSES = $(SOURCES:$(SRC_DIR)/%.java=$(BIN_DIR)/%.class)

all: $(CLASSES)

$(BIN_DIR)/%.class: $(SRC_DIR)/%.java
	@mkdir -p $(dir $@)
	$(JAVAC) -d $(BIN_DIR) -sourcepath $(SRC_DIR) $<

clean:
	@rm -rf $(BIN_DIR)/*

run: all
	@java -cp $(BIN_DIR) main.Main

.PHONY: all clean run
