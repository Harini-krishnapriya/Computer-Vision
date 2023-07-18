# Computer-Vision Repository
Welcome to the Computer-Vision Repository Repository! This repository aims to provide a comprehensive collection of concepts and techniques in Image processing and Computer Vision.

## Table of Contents

- [Introduction](#introduction)
- [Spatial Domain Filtering](#spatial-domain-filtering)
- [Segmentation](#segmentation)
- [Thresholding](#thresholding)
  
## Introduction
Computer vision is an interdisciplinary field that focuses on teaching computers to interpret and understand visual data, such as images and videos. MATLAB, with its powerful image processing and computer vision toolbox, offers an excellent environment for exploring and implementing computer vision algorithms.

With the rapid advancement of technology and the increasing availability of visual data, computer vision has gained significant importance and found applications in various domains. It plays a crucial role in areas such as object detection and recognition, image and video understanding, facial recognition, augmented reality, autonomous vehicles, medical imaging, surveillance systems, and more.

Computer vision algorithms leverage techniques from multiple disciplines, including image processing, pattern recognition, machine learning, and artificial intelligence. These algorithms are designed to process and analyze images or videos to extract valuable information, identify objects, detect patterns, measure distances, recognize gestures, and perform numerous other tasks.

The field of computer vision continues to evolve rapidly, thanks to advancements in hardware capabilities, deep learning models, and the availability of large-scale datasets. With the power of convolutional neural networks (CNNs), recurrent neural networks (RNNs), and other deep learning architectures, computer vision has achieved remarkable results in tasks such as image classification, object detection, semantic segmentation, and image generation.

In this repository, you will find a diverse range of computer vision topics and implementations, all developed using MATLAB. From fundamental concepts like image preprocessing, filtering, and feature extraction to advanced techniques such as object detection, image segmentation, and stereo vision, this repository covers a broad spectrum of computer vision tasks.

## Spatial Domain Filtering
Spatial domain filtering is a fundamental technique in computer vision that involves manipulating the pixels of an image directly in the image's spatial domain. It is used to enhance and modify images by applying various filters to achieve desired effects or extract specific features.

The process involves replacing the value of each pixel in the image with a weighted combination of its neighboring pixels, typically computed based on a mathematical function defined by the chosen filter. The size of the neighborhood or kernel and the weights assigned to each pixel within it determine the effect of the filter on the image.

Common types of spatial domain filters include mean filters, Gaussian filters, median filters, and Laplacian filters, among others. These filters can be customized to achieve specific goals, such as reducing noise, smoothing images, enhancing edges, or highlighting certain features.

Classification on the basis of linearity: There are two types: 
### 1. Linear Filtering
 A linear spatial filter averages the pixels within the neighborhood of the filter mask. The filter replaces the value of each pixel with the average of the gray levels in the neighborhood.
 #### Types of Linear filters:
  1. *Averaging filter*: All coefficients in the filter mask are equal, reducing image detail.
  2. *Weighted average filter*: Pixels are multiplied by different coefficients, with the center pixel having a higher value.
  3. *Arithmetic mean filter*: Removes short-tailed noise like uniform and Gaussian-type noise by blurring the image.
     - The filter calculates the average of all pixels within a local region using a mask.
     - Larger filter masks increase blurring and reduce high spatial frequency detail.
  4. *Geometric mean filter*: Replaces each pixel with the geometric mean of the surrounding pixel values.
     - The filter calculates the geometric mean using a mask.
     - It is better at removing Gaussian-type noise and preserving edge features compared to the arithmetic mean filter.

Important points:
- Linear filters, such as mean filters, are used for spatial filtering in image processing.
- Mean filters smooth images by averaging pixel values within a neighborhood.
- Averaging filters provide a simple and uniform blurring effect, reducing image detail.
- Weighted averaging filters assign higher importance to the center pixel, influencing the blurring effect.
- Arithmetic mean filters effectively remove short-tailed noise but may result in blurring.
- Geometric mean filters preserve edge features better while reducing Gaussian-type noise.
- The size of the filter mask determines the extent of blurring and the amount of detail preserved.
- Mean filters are widely used for noise reduction and image smoothing applications.
- Choosing the appropriate mean filter type and mask size depends on the specific image characteristics and desired trade-off between noise reduction and preserving image detail.
 ### 2.Non-linear Filtering (Order Statistics Filter):
  A non-linear filter, specifically the order statistics filter, operates based on the ordering of pixels within the image area covered by the filter. The filter replaces the value of the center pixel with a value determined by the ranking or ordering of pixels. Order statistics filters are effective in preserving edges and are particularly useful for noise reduction.

#### Types of Order Statistics Filters:
1. *Minimum filter*: The 0th percentile filter, also known as the minimum filter, replaces the value of the center pixel with the smallest value within the filter window.
2. *Maximum filter*: The 100th percentile filter, or the maximum filter, replaces the value of the center pixel with the largest value within the filter window.
3. *Median filter*: The median filter considers each pixel in the image. The neighboring pixels are sorted, and the original pixel values are replaced by the median value from 
                    the sorted list.

Important points:
- Minimum filters are useful for emphasizing dark regions and reducing high-intensity noise.
- Maximum filters enhance bright regions and can be effective for removing salt-and-pepper noise.
- Median filters are widely used for noise reduction while preserving edge details.
- Order statistics filters are particularly suitable for removing impulse or salt-and-pepper noise.
- These filters do not blur or distort edges, making them beneficial for preserving important image features.
- The size of the filter window affects the filtering results. Larger windows may lead to stronger noise reduction but can also blur fine details.
- Order statistics filters are widely employed in image denoising, edge preservation, and enhancement tasks.

By using non-linear order statistics filters, such as minimum, maximum, or median filters, image processing practitioners can effectively reduce noise while preserving important image features, resulting in cleaner and visually appealing images.

## Segmentation
### 1. Image segmentation using K means clustering-based algorithm.
Image segmentation using a K-means clustering-based algorithm is a popular technique for dividing an image into multiple distinct regions or objects. Here are some key points to understand this approach.

### Steps involved K-means clustering-based algorithm: 
    1. Preprocessing: Convert the input image to a suitable format, such as grayscale or RGB.
    2. Feature extraction: Represent each pixel in the image as a feature vector. For example, in the case of RGB images, a common representation is a vector with three components (red, green, blue values).
    3. Cluster initialization: Choose an initial set of K cluster centers. These centers can be randomly selected from the feature space.
    4. Cluster assignment: Assign each pixel to the nearest cluster center based on the feature similarity (e.g., using Euclidean distance).
    5. Update cluster centers: Recalculate the mean feature vectors for each cluster based on the pixels assigned to it.
    6. Repeat steps d and e until convergence: Reassign pixels to clusters and update cluster centers iteratively until the clusters stabilize.
    7. Postprocessing: Once the clustering converges, assign each pixel to the cluster it belongs to and generate a segmented image.
    
 *Limitations*: Although K-means clustering is a popular technique, it has some limitations when applied to image segmentation. For example:

   - It assumes a flat feature space, which may not be suitable for complex image structures.
   - It requires the number of clusters (K) to be predefined, which can be challenging when dealing with images containing varying object counts.
   - It may struggle with segmenting images that have overlapping or touching objects.

*Extensions and improvements*: Various extensions and improvements have been proposed to address the limitations of K-means clustering for image segmentation. These include incorporating spatial information, using more advanced clustering algorithms, or combining multiple segmentation techniques to achieve better results.

## Thresholding
Intensity thresholding is a technique used to separate foreground pixels from the background in an image. It involves selecting a threshold value that separates the intensity values of object pixels from the background pixels.
### 1. Iterative Global Thresholding
Iterative global thresholding is an approach to intensity thresholding that involves iteratively refining the threshold value until convergence is achieved. Here are some key points about iterative global thresholding:

### Steps involved K-means clustering-based algorithm: 
    1. Initial threshold estimation: The process starts with an initial estimate for the global threshold value, which can be determined using various techniques, such as histogram analysis or manual input.
    2. Segmentation: The image is segmented using the threshold value. Pixels with intensity values above the threshold are classified as foreground or object pixels, while pixels below or equal to the threshold are considered background pixels.
    3. Computation of mean intensity values: The mean intensity values of the foreground and background pixels are computed based on the segmentation result.
    4. Threshold update: A new threshold value is calculated based on the mean intensity values. This can be done by taking the average of the foreground and background means, or by considering some weighted combination.
    5. Iterative refinement: Steps 2 to 4 are repeated iteratively until convergence is achieved. Convergence is typically determined by measuring the difference between successive threshold values or by setting a predefined threshold difference threshold.
    6. Convergence criteria: Different convergence criteria can be used, such as the absolute difference between consecutive thresholds, the relative difference, or the difference normalized by the intensity range.
    7. Stopping condition: The iteration process stops when the convergence criteria are met, indicating that the threshold value has reached a stable point.
*Effectiveness and limitations*: Iterative global thresholding can be effective when the intensity distributions of foreground and background pixels are sufficiently distinct. However, it may face challenges when dealing with images containing complex or overlapping objects, non-uniform lighting conditions, or when the foreground and background intensities overlap significantly.

*Variants and extensions*: Various extensions and modifications to iterative global thresholding have been proposed to enhance its performance. These include incorporating spatial information, adaptive threshold estimation, or combining multiple thresholding techniques to improve the accuracy of segmentation results.

Overall, iterative global thresholding provides a flexible and adaptive approach to intensity-based image segmentation by refining the threshold value iteratively based on the mean intensities of foreground and background regions.
### 2. Global Thresholding Using Otsu's Method
Global Thresholding Using Otsu's Method is a variance-based technique for finding an optimal threshold to separate foreground and background pixels in an image. It computes the histogram, calculates cumulative sums and means, evaluates between-class variance, selects the threshold with maximum variance, and applies it to segment the image. Otsu's method is simple, adaptive, and widely used, but assumes a bimodal intensity distribution.

*More information of this method will be given on another repository*

