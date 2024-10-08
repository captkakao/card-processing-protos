First you have to install protoc utility inorder to generate go code from proto files
https://grpc.io/docs/protoc-installation/

26m
Указываем где находятся наши прото файлы и флаг --go_out гед будут лежать сгенерированный go код 
protoc -I proto proto/card/card.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative

