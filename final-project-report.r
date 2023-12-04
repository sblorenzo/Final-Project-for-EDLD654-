{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "2be14eca",
   "metadata": {
    "papermill": {
     "duration": 0.00346,
     "end_time": "2023-12-04T21:11:26.782513",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.779053",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<div align=\"center\">\n",
    "\n",
    "#     Predicting Real-Life Disasters on Twitter Through Data Modeling"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "79c3a9cd",
   "metadata": {
    "papermill": {
     "duration": 0.002771,
     "end_time": "2023-12-04T21:11:26.788357",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.785586",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<div align=\"center\">Samantha Lorenzo\n",
    "<div align=\"center\">EDLD654 Machine Learning for Educational Data Science\n",
    "<div align=\"center\">Final Project Report\n",
    "<div align=\"center\">December 6, 2023"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a91c951b",
   "metadata": {
    "papermill": {
     "duration": 0.002737,
     "end_time": "2023-12-04T21:11:26.793875",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.791138",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Reproducibility Note:** Please use this [link](https://github.com/sblorenzo/Final-Project-for-EDLD654-) to view the GitHub repopsitory. All codes used for this report can be found in the **r-code.r** file within the **R** branch. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "36b0affa",
   "metadata": {
    "papermill": {
     "duration": 0.002725,
     "end_time": "2023-12-04T21:11:26.799374",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.796649",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Research Problem**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1c60f2fd",
   "metadata": {
    "papermill": {
     "duration": 0.00273,
     "end_time": "2023-12-04T21:11:26.804931",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.802201",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Description of Data**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3eea4db9",
   "metadata": {
    "papermill": {
     "duration": 0.002731,
     "end_time": "2023-12-04T21:11:26.810426",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.807695",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Description of the Models**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "13931448",
   "metadata": {
    "papermill": {
     "duration": 0.002715,
     "end_time": "2023-12-04T21:11:26.815884",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.813169",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Data Visualization**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "20705916",
   "metadata": {
    "papermill": {
     "duration": 0.002784,
     "end_time": "2023-12-04T21:11:26.821490",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.818706",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 1:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d6f7ba90",
   "metadata": {
    "papermill": {
     "duration": 0.002744,
     "end_time": "2023-12-04T21:11:26.827024",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.824280",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 2:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a0c477ae",
   "metadata": {
    "papermill": {
     "duration": 0.002772,
     "end_time": "2023-12-04T21:11:26.832629",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.829857",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***Model 3:***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6c5d387e",
   "metadata": {
    "papermill": {
     "duration": 0.00271,
     "end_time": "2023-12-04T21:11:26.838253",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.835543",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Model Fit**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f596f5c9",
   "metadata": {
    "papermill": {
     "duration": 0.002793,
     "end_time": "2023-12-04T21:11:26.843838",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.841045",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Discussion/Conclusion**\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b2bf46be",
   "metadata": {
    "papermill": {
     "duration": 0.002763,
     "end_time": "2023-12-04T21:11:26.849433",
     "exception": false,
     "start_time": "2023-12-04T21:11:26.846670",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**References**\n",
    "\n",
    "Addison Howard, devrishi, Phil Culliton, Yufeng Guo. (2019). Natural Language Processing with Disaster Tweets. *Kaggle*. \n",
    "    https://kaggle.com/competitions/nlp-getting-started.\n",
    "    "
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "gpu",
   "dataSources": [],
   "isGpuEnabled": true,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 2.909247,
   "end_time": "2023-12-04T21:11:26.971883",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-12-04T21:11:24.062636",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
