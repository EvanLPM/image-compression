# SVD Compression

## Project Description

This project focuses on image compression, a process that reduces the size of an image while preserving its visual quality. Image compression is particularly useful in various applications, including data storage, transmission, and archiving. 

The primary technique employed in this project is **Singular Value Decomposition (SVD)**. SVD is a mathematical method that decomposes a matrix into three other matrices, capturing the essential features and patterns in the data. In the context of image compression, SVD can be applied to represent an image with fewer components while minimizing information loss.

### Key Features:

1. **Grayscale Image Compression:** This project primarily deals with grayscale images, which are images represented in shades of gray (from black to white) rather than full-color images with multiple color channels.

2. **Controlled Compression Ratio:** Users can control the level of compression by adjusting the compression ratio parameter (`p`). This parameter determines the trade-off between image quality and compression size. A higher `p` value retains more image details but results in larger compressed files, while a lower `p` value sacrifices some details for higher compression.

3. **Block-Based Compression:** The project offers block-based compression, where the image is divided into smaller blocks, and SVD is applied to each block individually. This approach allows for localized compression and can be particularly useful for certain types of images.

### How It Works:

1. **Load the Image:** The project begins by loading a grayscale image (a sample image is provided, but you can replace it with your own).

2. **Apply SVD Compression:** The loaded image is then processed using the SVD technique. The key idea here is to represent the image with a reduced number of singular values while maintaining the overall structure of the image.

3. **Customize Compression Settings:** Users have the flexibility to adjust the compression settings, such as the block size (`b`) and compression ratio (`p`), to tailor the compression process according to their specific requirements.

4. **View Compression Results:** After the compression, the project displays the compressed image and provides statistics, including the compression ratio and the Frobenius norm error, which quantifies the difference between the original and compressed images.

### Benefits:

- **Storage Efficiency:** Image compression reduces the file size, making it more efficient for storage and transmission. This is particularly valuable in scenarios where large amounts of image data need to be managed.

- **Fast Transmission:** Smaller image files can be transmitted more quickly over networks, which is advantageous in applications like online image sharing and video streaming.

- **Reduced Bandwidth:** Image compression reduces the bandwidth required for image-related tasks, leading to faster loading times for web applications and improved user experiences.

- **Preservation of Visual Quality:** While compression reduces file size, the project aims to preserve the essential visual quality of images, ensuring that important details are not lost.


## Prerequisites

To run this project, you'll need:

- MATLAB installed on your machine.

## Usage

1. Clone the repository:

2. Open MATLAB.

3. Run the `img_compress.m` script. This script loads an image, compresses it using SVD, and displays the compressed image with compression statistics.

4. Customize the compression settings by modifying the `img_compress.m` script. You can adjust the block size (`b`) and compression ratio (`p`) as needed.

## File Structure

The project directory structure is organized as follows:

## Contributors

Kane Norman (Southern Methodist University)
Evan Pearlman Morales (Southern Methodist University)

## License
This project is licensed under the MIT License.
