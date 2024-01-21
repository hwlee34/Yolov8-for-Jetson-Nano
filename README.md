# Yolov8-for-Jetson-Nano
Using yolov8&amp;TensorRT with Jetson Nano

- Jetpack 4.6.x이하에서는 pytorch1.11이상을 지원하지 않아서 Ubuntu 20.04에서 수행
- Ubuntu 20.04에 OpenCV부터 Pytorch, TensorRT까지 깔린 image를 base로 ultralytics만 설치하여 환경설정

- 해당 Dockerfile로 빌드하면 yolov8까지 설치, demo code 정상 작동 확인함
- Jetson Nano환경에서 yolov8x, yolov8m (pose) tensorRT 변환/추론 확인 완료
---
- Docker 환경에서 openCV imshow() 사용
```bash
export DISPLAY=$DISPLAY
xhost +
```
---
run    
```bash
docker run --gpus all -it --rm --network host -e DISPLAY=$DISPLAY -v /PATH/TO/:/workspace {image_tag}:latest
```
