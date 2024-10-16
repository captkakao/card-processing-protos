# Directory where .proto files are located
PROTO_DIR = proto

# Output directory for generated Go files
OUT_DIR = gen/go

# Find all .proto files in PROTO_DIR and its subdirectories
PROTO_FILES := $(shell find $(PROTO_DIR) -name '*.proto')

# Define the command to run protoc
define PROTOC_GEN
	protoc -I $(PROTO_DIR) $(1) \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative
endef

# Ensure output directory exists before generating Protobuf files
proto-generate: $(OUT_DIR)
	$(foreach PROTO_FILE, $(PROTO_FILES), $(call PROTOC_GEN,$(PROTO_FILE));)

# Clean generated files
clean:
	rm -rf $(OUT_DIR)