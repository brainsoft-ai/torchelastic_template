N_NODE=2
# export NCCL_SOCKET_IFNAME=eno1
export GLOO_SOCKET_IFNAME=eno1

python -m torchelastic.distributed.launch \
  --nnodes=3 \
  --nproc_per_node=1 \
  --rdzv_id=220 \
  --rdzv_backend=etcd \
  --rdzv_endpoint=10.10.25.65:4377 \
  main.py data
