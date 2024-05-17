# Logistic Demand model

By Gilles Wolters, Teun Kok, Blanca Móri, Klaudia Pietrzykowska and Verena Zielke.

This project was created as part of the course: Smart Service Project of Maastricht University BISS program 2023.

## Running instructions

This project makes use of multiple different packages.
We recommend using a package manager, such as anaconda, to make it easier to run the code.

To install all required packages:

```pip install -r requirements.txt```

The main code can be found in the Prediction.ipynb file.
This is a Jupyter notebook describing all the performed steps:
Data collection, Data cleaning, Model training, Model testing, Importing and cleaning survey data, Model predictions,
Exploring the results

This notebook uses Phyton code and the data from the data Folder as input.

The Output folder contains two files:

1. Dashboard.csv, representing the output of the model, will be used in the creation of the dashboard later on. The
   DashboardData file contains only the predicted average total number of pallets per month, as well as the standard
   deviation, the Total amount of palettes per year, the number of predicted business and predicted logistic demand, all
   for each sector. Predicted demand is calculated in total number of palettes for a year of the sector times the amount
   of
   businesses in this sector.
2. model_dict.pkl is a dictionary containing the trained model for each of the sectors. As a default, the model training
   is included in the notebook. However, the model training can be disabled in the settings at the top of the notebook
   file by setting train_model = false.

The CombineData.R file shows how to import and combine the data/combined files together into the data/TotalDataset.csv
The main code can be found in the Prediction.ipynb file.

## Data

Within the data folder are multiple folders and files on collected and created data.
SurveyData.csv contains the results of average demand and standard deviation of demand of our company survey in
Maastricht. The units are palettes per month per business sector.
TotalDataset.csv is the full collected unfiltered dataset created. The CBS data from the data/raw folder was used in the
creation of the TotalDataset. The Dataset includes area specific data of Wijks in Maastricht of multiple years.
Data/combined Folder – multiple years combined area specific data of wijks in Maastricht
Data/raw Folder – yearly area specific data of wijks in Maastricht

## Adding additional data

New data should be added in the data/raw folder.
The sources for the data are described in the notebook itself but the most important one is the CBS:
https://dataportal.cbs.nl/detail/CBS/84799NED

The downloaded CSV's should be included in the data import as described in the notebook.
