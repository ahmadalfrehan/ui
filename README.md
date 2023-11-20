# House Price Prediction App

This Flutter project is a simple mobile application that predicts house prices using a machine
learning model. The backend is powered by FastAPI, and the machine learning model is implemented in
Python.

## Machine Learning Model

The machine learning model used for house price prediction is available in the following GitHub
repository:

[Machine Learning Model Repository](https://github.com/ahmadalfrehan/intro-to-machinelearning)

To use the model in this Flutter project, follow the instructions provided in the model repository
for training and exporting the model.

## Flutter Project

### Setup

1. Clone this repository:

    ```bash
    git clone https://github.com/ahmadalfrehan/ui.git
    cd ui
    ```

2. Ensure you have Flutter installed. If not, follow
   the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

3. Install dependencies:

    ```bash
    flutter pub get
    ```

### Running the App

3. Connect your device or use an emulator, then run:
    ```bash
    flutter run
    ```

# Usage

1- Input the required details for a house (e.g., Lot Area, Year Built, etc.). 2- Press the "Predict"
button. 3- The app will send the input to the FastAPI backend, which will use the machine learning
model to predict the house price. 4- The predicted price will be displayed on the app.

# FastAPI Backend

The FastAPI backend serves as the API endpoint for the Flutter app to interact with the machine
learning model.

# Setup

1. Install FastAPI and Uvicorn:
   ```bash 
   pip install fastapi uvicorn
   ```
2. Run the FastAPI server:
   ```bash 
   uvicorn main:app --reload
   ```

The FastAPI server will be running at http://127.0.0.1:8000.

# Acknowledgments

This project uses the machine learning model
from [House Prices Predication](https://github.com/ahmadalfrehan/intro-to-machinelearning). Special
thanks to the author for providing the model.

# Copyright

All rights reserved © Ahmad Alfrehan 2023.

For more information, visit [ahmadalfrehan](https://ahmadalfrehan.com).