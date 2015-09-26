---
title: "Codebook"
output: html_document
---
The features selected for this database come from the Accelerationelerometer and Gyroscopescope 3-axial raw signals TimeDomainAcceleration-XYZ and TimeDomainGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the Accelerationeleration signal was then separated into body and gravity Accelerationeleration signals (TimeDomainBodyAcceleration-XYZ and TimeDomainGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear Acceleration and angular velocity were derived in time to obtain Jerk signals (TimeDomainBodyAccelerationJerk-XYZ and TimeDomainBodyGyroscopeJerk-XYZ). Also the Magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm (TimeDomainBodyAccelerationMagnitude, TimeDomainGravityAccelerationMagnitude, TimeDomainBodyAccelerationJerkMagnitude, TimeDomainBodyGyroscopeMagnitude, TimeDomainBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyDomainBodyAcceleration-XYZ, FrequencyDomainBodyAccelerationJerk-XYZ, FrequencyDomainBodyGyroscope-XYZ, FrequencyDomainBodyAccelerationJerkMagnitude, FrequencyDomainBodyGyroscopeMagnitude, FrequencyDomainBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- TimeDomainBodyAcceleration-XYZ
- TimeDomainGravityAcceleration-XYZ
- TimeDomainBodyAccelerationJerk-XYZ
- TimeDomainBodyGyroscope-XYZ
- TimeDomainBodyGyroscopeJerk-XYZ
- TimeDomainBodyAccelerationMagnitude
- TimeDomainGravityAccelerationMagnitude
- TimeDomainBodyAccelerationJerkMagnitude
- TimeDomainBodyGyroscopeMagnitude
- TimeDomainBodyGyroscopeJerkMagnitude
- FrequencyDomainBodyAcceleration-XYZ
- FrequencyDomainBodyAccelerationJerk-XYZ
- FrequencyDomainBodyGyroscope-XYZ
- FrequencyDomainBodyAccelerationMagnitude
- FrequencyDomainBodyAccelerationJerkMagnitude
- FrequencyDomainBodyGyroscopeMagnitude
- FrequencyDomainBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- TimeDomainBodyAccelerationMean
- TimeDomainBodyAccelerationJerkMean
- TimeDomainBodyGyroscopeMean
- TimeDomainBodyGyroscopeJerkMean
