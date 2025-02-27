echo Downloading pretrained yolor_p6 weights...
gdown "https://drive.google.com/uc?export=download&id=1-6a2Ijj0-q3qn_fVOAPZDYEdEruaJjjV" -O yolor_p6.pt &>/dev/null
echo Installing repo requirements...
pip install -qr requirements.txt &>/dev/null
echo Setting up mish-cuda...
git clone https://github.com/JunnYu/mish-cuda &>/dev/null
cd mish-cuda
python setup.py build install &>/dev/null
cd ..
echo Setting up pytorch_wavelets...
git clone https://github.com/fbcotter/pytorch_wavelets &>/dev/null
cd pytorch_wavelets
pip install . &>/dev/null
cd ..
echo Done!!