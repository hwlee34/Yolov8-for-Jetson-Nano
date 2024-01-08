FROM timongentzsch/l4t-ubuntu20-pytorch

RUN apt-get update && apt-get install --no-install-recommends -y gcc git zip curl htop libgl1 libglib2.0-0 libpython3-dev gnupg g++ libusb-1.0-0

RUN pip install --upgrade pip setuptools wheel psutil
RUN pip install --ignore-installed --no-cache tqdm matplotlib pyyaml psutil pandas onnx
RUN pip install --ignore-installed --no-cache --no-deps ultralytics "numpy==1.23.1"
RUN pip install --ignore-installed --no-cache py-cpuinfo scipy>=1.4.1 seaborn>=0.11.0 requests>=2.23.0

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/aarch64-linux-gnu/tegra/ \
    LD_PRELOAD=/usr/lib/aarch64-linux-gnu/libGLdispatch.so.0
