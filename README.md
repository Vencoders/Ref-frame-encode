# Neural texture transfer assisted video coding with adaptive up-sampling(Signal Processing: Image Communication, 2022)
Paper Link:https://www.sciencedirect.com/science/article/abs/pii/S0923596522000777
## Pre-requisites

- python3.6

- TensorFlow 1.13.1
- requests 2.21.0
- pillow 5.4.1
- matplotlib 3.0.2



# Dataset

##### 11,871 input-reference pairs (size 160x160) extracted from [CUFED](http://acsweb.ucsd.edu/~yuw176/event-curation.html).

Each pair is extracted from the similar images, including five degrees of similarity. 

```
$ python download_dataset.py --dataset_name CUFED
```

To speed up the training process, patch matching and swapping are performed offline, and the swapped feature maps will be saved to `data/train/CUFED/map_321` (see [`offline_patchMatch_textureSwap.py`](offline_patchMatch_textureSwap.py) for more details). 

```
$ python offline_patchMatch_textureSwap.py
```



# Training

```
$ python main.py --is_train True
```



# Test

Test on the custom training model

单个序列测试

```
$ python main.py --is_train False
```

批量序列测试

```
$ bash ceshi.sh
```

输出的结果为增强后的RGB图片

VCEG-M33[1] 计算最终BD-rate的结果

[1] G. Bjøntegaard, “Calculation of average PSNR differences between RD-Curves,” ITUTSG16/Q6, Doc. VCEG-M33, Austin, Apr. 2001
