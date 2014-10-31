if exist "./src/caffe/proto/caffe.pb.h" (
    echo caffe.pb.h remains the same as before
) else (
    echo caffe.pb.h is being generated
    "./tools/protoc" -I="./src/caffe/proto" --cpp_out="./src/caffe/proto" "./src/caffe/proto/caffe.proto"
)


