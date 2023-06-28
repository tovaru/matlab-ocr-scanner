# matlab-ocr-scanner
Classify BMP images of numbers

This is a MatLab app that uses classification algorithms to recognize BMP images of numbers.

You can choose between two main algorithms for training, Nearest Neighbours and Naive Bayers, along a few parameters. You can also use Principal Component Analysis (PCA) to simplify the data (optional).
It’s possible to apply morphological operations for image preprocessing, which are 4 in total: erosion, dilatation, opening and filling. All changes are immediately reflected on screen.

When you press the Training button, the program will then try to classify all images and make a small report of the results, that is, a confusion chart and the recognition percentage. It’s also possible to click on individual images (after training) and see what number was detected.

The algorithms used on this project were the following:
-K-Nearest Neighbours
-Naive Bayes
-Principal Component Analysis

Note: you need to use PCA for Naive Bayes or it won’t work.

![App screenshot](https://github.com/tovaru/matlab-ocr-scanner/blob/master/screenshots/app.png)