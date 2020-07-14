PUBLIC_HOST_NAME=10.10.25.65 # Change to public host name for all nodes to connect
etcd --enable-v2 \
     --listen-client-urls http://0.0.0.0:4377,http://127.0.0.1:4001 \
     --advertise-client-urls http://$PUBLIC_HOST_NAME:4377
