
# GPU Batch Image Grayscale Processing using CUDA
### Name : Titus Ratna Kumar Karivella 
### Register number : 212224230292

## Project Description

This project demonstrates GPU-based data processing using **CUDA**.
The program uses a CUDA kernel to process a large dataset in parallel on the GPU.

The goal of this project is to show how GPU computing can accelerate processing tasks compared to traditional CPU execution.

## Dataset

The project simulates processing of multiple images.
Sample input images are stored in the **images/** directory.

Example:

```
images/
img1.jpg:
img2.jpg
img3.jpg
```

## GPU Processing Method

A CUDA kernel is launched where multiple GPU threads process the data simultaneously.

Each thread processes part of the dataset, demonstrating parallel execution on the GPU.

## Files in the Project

```
grayscale.cu      -> CUDA kernel code
Makefile          -> Compiles the CUDA program
images/           -> Input dataset images
output/           -> Processed results
```

## How to Compile

Run the following command:

```bash
nvcc grayscale.cu -o grayscale
```

or

```bash
make
```

## How to Run

```bash
./grayscale
```

## Example Output

```
GPU processing completed
```

## Proof of Execution

The repository includes:

* execution logs
* input images
* processed output images
* terminal screenshots

These files demonstrate that the CUDA kernel executed successfully on the dataset.

## Conclusion

This project demonstrates how CUDA can be used to accelerate processing tasks using GPU parallel computing.
