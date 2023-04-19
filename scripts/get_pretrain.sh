gdown "https://drive.google.com/uc?export=download&id=17tTY_7NdQgEdKT_zuOQAk53jidjo_b6r" -O pretrained_weights.pt
cd yolor
pip install -qr requirements.txt
git clone https://github.com/JunnYu/mish-cuda
cd mish-cuda
python setup.py build install &>/dev/null
cd ..
git clone https://github.com/fbcotter/pytorch_wavelets
cd pytorch_wavelets
pip install .
cd ..
bash scripts/get_pretrain.sh