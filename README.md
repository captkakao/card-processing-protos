First, you have to install the `protoc` utility to generate Go code from proto files. Follow the installation instructions at https://grpc.io/docs/protoc-installation/.

Once you have `protoc` installed, you can use the provided Makefile to generate Go code from your `.proto` files.

### Makefile

To generate Go code from proto files, run:
```bash
make proto-generate
```

To remove generated go files, run:
```bash
make clean
```