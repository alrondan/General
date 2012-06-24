TOP := $(dir $(lastword $(MAKEFILE_LIST)))

BUILD_DIR=$(TOP)/build
OPTIONS="-j8"

all:
	@if [ -f "$(BUILD_DIR)/Makefile" ]; then \
	cd $(BUILD_DIR) && make $(OPTIONS);     \
	else \
	mkdir $(BUILD_DIR) && cd $(BUILD_DIR) && cmake .. && make $(OPTIONS); \
	fi

clean:
	@rm -rf $(BUILD_DIR) lib main
