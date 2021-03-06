.PRECIOUS: %.pb.cc %.pb.h
%.pb.cc %.pb.h: %.proto
	protoc -I ${abs_top_srcdir}/../proto --cpp_out=. $^

.PRECIOUS: %.grpc.pb.cc %.grpc..pb.h
%.grpc.pb.cc %.grpc.pb.h: %.proto
	protoc -I ${abs_top_srcdir}/../proto --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` $<


vpath %.proto ${abs_top_srcdir}/../proto
