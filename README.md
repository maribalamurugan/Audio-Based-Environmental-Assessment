# Audio-Based Environmental Noise Assessment

## Project Overview

Audio-Based Environmental Noise Assessment is a MATLAB and Simulink project that analyzes and compares audio levels across three different environments: residential, industrial, and traffic.

The project evaluates audio samples representing morning, afternoon, and evening periods. MATLAB processes the audio signals, calculates their RMS amplitudes and relative audio levels in dBFS, and visualizes the results using graphs.

The project demonstrates how audio signal processing can support environmental noise monitoring and comparison.

## Objectives

- Analyze audio signals using MATLAB.
- Calculate Root Mean Square (RMS) amplitude.
- Convert audio amplitude into relative decibel levels (dBFS).
- Compare audio levels across different environments.
- Examine variations between morning, afternoon, and evening.
- Visualize and save the analysis results.
- Demonstrate audio signal processing using Simulink.

## Environments Analyzed

1. **Residential:** Represents audio samples for residential surroundings.
2. **Industrial:** Represents audio samples for industrial surroundings.
3. **Traffic:** Represents audio samples for traffic environments.

Each environment has three sample recordings representing morning, afternoon, and evening, giving a total of nine audio files.

## Technologies Used

- MATLAB
- Simulink
- Audio Signal Processing
- RMS Calculation
- Decibel Level Analysis
- Fast Fourier Transform (FFT) concepts

## Project Files

| File | Description |
|---|---|
| `generate_test_audio.m` | Generates nine synthetic audio files. |
| `environmental_noise_assessment.m` | Analyzes audio levels, compares environments, generates graphs, and saves results. |
| `residential_morning.wav` | Residential morning sample. |
| `residential_afternoon.wav` | Residential afternoon sample. |
| `residential_evening.wav` | Residential evening sample. |
| `industrial_morning.wav` | Industrial morning sample. |
| `industrial_afternoon.wav` | Industrial afternoon sample. |
| `industrial_evening.wav` | Industrial evening sample. |
| `traffic_morning.wav` | Traffic morning sample. |
| `traffic_afternoon.wav` | Traffic afternoon sample. |
| `traffic_evening.wav` | Traffic evening sample. |
| `Environmental_Noise_Assessment.slx` | Simulink model, if included in the repository. |

## Methodology

1. Generate synthetic audio samples for the three environments.
2. Load the audio files into MATLAB.
3. Process the signals and calculate RMS amplitude.
4. Calculate relative audio levels in dBFS.
5. Compare the results across environments and time periods.
6. Generate bar graphs to visualize the differences.
7. Save the results in CSV and MAT formats.

## Simulink Implementation

The Simulink model demonstrates audio signal processing using the following blocks:

- **From Workspace:** Supplies audio data to the model.
- **MATLAB Function:** Calculates RMS amplitude and converts it into dBFS.
- **Display:** Displays the calculated numerical value.

The model can be used to examine the relative level of an individual audio recording.

## Applications

- Environmental audio analysis demonstrations.
- Comparing sound levels across different locations.
- Studying variations in sound levels over time.
- Educational demonstrations of MATLAB and Simulink.
- Supporting preliminary noise-monitoring studies.

## Results

The MATLAB program generates comparison graphs and saves the calculated results in:

- `environmental_noise_results.csv`
- `environmental_noise_results.mat`

The graphs illustrate differences in relative audio levels across the three environments and three time periods.

## Limitations

The current project uses synthetic audio signals rather than actual environmental recordings. Therefore, its results demonstrate the analysis process and do not represent measured noise levels at real locations.

The calculated dBFS values are relative digital audio levels, not calibrated sound pressure levels in dB(A). Real-world environmental noise assessment requires actual recordings and suitable calibrated measurement equipment.

## Future Improvements

- Analyze real environmental audio recordings.
- Compare current recordings with historical measurements.
- Add time-based noise variation plots.
- Include frequency spectrum analysis.
- Develop automatic alerts for unusual audio-level changes.
- Integrate calibrated sound-level measurements.

## How to Run

1. Install MATLAB.
2. Open the project folder in MATLAB.
3. Run `generate_test_audio.m` to create the nine sample WAV files.
4. Run `environmental_noise_assessment.m` to analyze the files.
5. View the generated graphs and result files.
6. Open `Environmental_Noise_Assessment.slx` to explore the Simulink model, if included.

## Author

Add your name, department, and institution here.

## License

This project is intended for educational and demonstration purposes. Add an appropriate open-source license if you wish to permit reuse and redistribution.
