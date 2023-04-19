echo Downloading pretrained yolor_p6 weights...
gdown "https://drive.google.com/uc?export=download&id=17tTY_7NdQgEdKT_zuOQAk53jidjo_b6r" -O pretrained_weights.pt
cd yolor
echo Installing repo requirements...
pip install -qr requirements.txt
echo Setting up mish-cuda...
git clone https://github.com/JunnYu/mish-cuda
cd mish-cuda
python setup.py build install &>/dev/null
cd ..
echo Setting up pytorch_wavelets...
git clone https://github.com/fbcotter/pytorch_wavelets
cd pytorch_wavelets
pip install .
cd ..
echo Done!!