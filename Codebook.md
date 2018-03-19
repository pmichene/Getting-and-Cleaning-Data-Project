# Codebook

This codebook relates to the tidy_data.txt file

## Data Structure

The tidy_data.txt file contains a space separated table.  The first row contains the variable and identifier information.

### Identifiers

* 'subject'- Numerical values to identify each subject in the study

* 'activity'- What type of activity was being performed at the time of measurement

    1. Walking
    2. Walking_Upstairs
    3. Walking_Downstairs
    4. Sitting
    5. Standing
    6. Laying

### Variables

Variables can first be separated into two goups, Time Domain (denoted "Time") and Frequency Domain (denoted "Frequency").
Time Domain data is the direct results from the accelerometer and gyroscope data capture.  
A Fast Fourier Transform was applied on the Time Domain data to produce the Frequency Domain data.

The mean and standard deviation are present in this data table.

An X/Y/Z suffix refers to the 3 axial signals received.

"TimeBodyAccelerometerMeanX"
"TimeBodyAccelerometerMeanY"
"TimeBodyAccelerometerMeanZ"
"TimeBodyAccelerometerStandardDeviationX"
"TimeBodyAccelerometerStandardDeviationY"
"TimeBodyAccelerometerStandardDeviationZ"
"TimeGravityAccelerometerMeanX"
"TimeGravityAccelerometerMeanY"
"TimeGravityAccelerometerMeanZ"
"TimeGravityAccelerometerStandardDeviationX"
"TimeGravityAccelerometerStandardDeviationY"
"TimeGravityAccelerometerStandardDeviationZ"
"TimeBodyAccelerometerJerkMeanX"
"TimeBodyAccelerometerJerkMeanY"
"TimeBodyAccelerometerJerkMeanZ"
"TimeBodyAccelerometerJerkStandardDeviationX"
"TimeBodyAccelerometerJerkStandardDeviationY"
"TimeBodyAccelerometerJerkStandardDeviationZ"
"TimeBodyGyroscopeMeanX"
"TimeBodyGyroscopeMeanY"
"TimeBodyGyroscopeMeanZ"
"TimeBodyGyroscopeStandardDeviationX"
"TimeBodyGyroscopeStandardDeviationY"
"TimeBodyGyroscopeStandardDeviationZ"
"TimeBodyGyroscopeJerkMeanX"
"TimeBodyGyroscopeJerkMeanY"
"TimeBodyGyroscopeJerkMeanZ"
"TimeBodyGyroscopeJerkStandardDeviationX"
"TimeBodyGyroscopeJerkStandardDeviationY"
"TimeBodyGyroscopeJerkStandardDeviationZ"
"TimeBodyAccelerometerMagnitudeMean"
"TimeBodyAccelerometerMagnitudeStandardDeviation"
"TimeGravityAccelerometerMagnitudeMean"
"TimeGravityAccelerometerMagnitudeStandardDeviation"
"TimeBodyAccelerometerJerkMagnitudeMean"
"TimeBodyAccelerometerJerkMagnitudeStandardDeviation"
"TimeBodyGyroscopeMagnitudeMean"
"TimeBodyGyroscopeMagnitudeStandardDeviation"
"TimeBodyGyroscopeJerkMagnitudeMean"
"TimeBodyGyroscopeJerkMagnitudeStandardDeviation"
"FrequencyBodyAccelerometerMeanX"
"FrequencyBodyAccelerometerMeanY"
"FrequencyBodyAccelerometerMeanZ"
"FrequencyBodyAccelerometerStandardDeviationX"
"FrequencyBodyAccelerometerStandardDeviationY"
"FrequencyBodyAccelerometerStandardDeviationZ"
"FrequencyBodyAccelerometerJerkMeanX"
"FrequencyBodyAccelerometerJerkMeanY"
"FrequencyBodyAccelerometerJerkMeanZ"
"FrequencyBodyAccelerometerJerkStandardDeviationX"
"FrequencyBodyAccelerometerJerkStandardDeviationY"
"FrequencyBodyAccelerometerJerkStandardDeviationZ"
"FrequencyBodyGyroscopeMeanX"
"FrequencyBodyGyroscopeMeanY"
"FrequencyBodyGyroscopeMeanZ"
"FrequencyBodyGyroscopeStandardDeviationX"
"FrequencyBodyGyroscopeStandardDeviationY"
"FrequencyBodyGyroscopeStandardDeviationZ"
"FrequencyBodyAccelerometerMagnitudeMean"
"FrequencyBodyAccelerometerMagnitudeStandardDeviation"
"FrequencyBodyAccelerometerJerkMagnitudeMean"
"FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation"
"FrequencyBodyGyroscopeMagnitudeMean"
"FrequencyBodyGyroscopeMagnitudeStandardDeviation"
"FrequencyBodyGyroscopeJerkMagnitudeMean"
"FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation" 
