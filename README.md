# ROBT403: Image Processing Homework Project 2
Visual illusion | Interpolation | Local histogram equalization implementation by using MATLAB

## Description
In this assigment it was required to implement some tasks in warmup part regarding Nearest-Neighbor Interpolation technique and Histogram
equalization by using MATLAB software, as well as to implement Floyd–Steinberg dithering. 

## Warmup
### Task 1.1
In this task by using Nearest-Neighbor Interpolation technique it was required to compare images, `Original` vs `Interpolated`. User can adjust desirable size of image Results can be observed below on the Figure 1:  

![task1](https://user-images.githubusercontent.com/67557966/109764630-033b1980-7c1e-11eb-8c0d-243bbb406042.jpg)

### Task 1.2
This task required to investigate `"mystery image"` and reveal hidden elements by applying `histogram` and `local histogram` equalization. Results can be observed below on the Figure 2:

![1 2](https://user-images.githubusercontent.com/67557966/109764906-51501d00-7c1e-11eb-8996-97cba6446abc.jpg)


## Main part 
In this part photo mosaic was implemented by using `python`. I implemented this task with different shapes: `circle` and `square`. It can be regulated inside python code. It can take a while in order to render your final photo, cause I used high-quality images for both dataset and input. 

In order to run code just change directory to source folder and type `python main.py` or `python circle.py`. In case if you want to change size of the tiles, then you need to find this line `parser.add_argument("--stride", type=int, default=40, help="Size of small image")` and change `40` to bigger or smaller value. Note that dataset and output folder, as well as python files should be located in the same folder. Unfortunately I can't upload files more than `10 Mb` that is why you need to run these scripts by yourselves in order to observe results. I will put compressed results below. Square images:


![output-min](https://user-images.githubusercontent.com/67557966/107982283-f13a6380-6fed-11eb-82c7-84cbc7dd932d.jpg)

Circle images:

![output-min](https://user-images.githubusercontent.com/67557966/108085250-539f6c80-709f-11eb-9248-7a531060aa35.jpg)

## Good Luck!

