# 분산 멀티 GPU 환경에서 imagenet을 학습하는 예제
 > 추후 다른 데이터 셋과 다른 모델을 적용하기 위함.
 > 3개의 노드에서 돌아가는 것 확인함.
 
 
# usage
 ./server.sh # 서버에서만 실행
 ./run.sh # 각 노드에서 실행


# 참고사항
## key-value RPC 역할을 해주는 서버가 필요
 > etcd를 사용
 > 설치
 > apt-get install etcd
 > systemctl stopd etcd
 > ./server.sh # private setting 으로 실행하여야 함.

## 호스트를 찾을 수 없음 [ Host name not found ]
 > local hostname keyword : avahi, mdnsm, bonjour(apple)
 > ubuntu 18.04 환경에서는 기본적으로 적용 되는 것 같음.
 
 > 호스트를 찾기 위해서는 토치엘라스틱의 코드를 수정해야함. [정답인지는 모르겠지만 수정하면 됨]
 > vim venv/lib/python3.6/site-packages/torch/distributed/rendezvous.py
 > 172 라인 위에 """master_addr += '.local'"""
 > hostname만 가지고는 에러가 발생하기 때문에 뒤에 .local을 추가해 줌으로 에러 수정.
 > 제대로 된 해결책인지는 모르겠으나, 현재 상황에서 3대의 pc에서 분산하여 학습 하는 것을 확인.

## run.sh 에서의 의문
 > NCCL 를 사용하길 권하는데 NCCL 설정을 변경하면 죽음
 > GLOO 에서 WHATEVER IN IFCONFIG (like eth0 or something / eno1 사용 )
 
## 필요한 추가 리소스 
/data : [tiny imagenet dataset downloads](https://www.kaggle.com/c/tiny-imagenet/data)

