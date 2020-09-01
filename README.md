# Petrophysical properties prediction using CNNs
Neural network based petrophysical property inversion.

Paper reference:

Das, V. and T. Mukerji, 2019, Petrophysical properties prediction from pre-stack seismic data using convolutional neural networks: SEG Technical Program Expanded Abstracts 2019, 2328-2332.

(https://library.seg.org/doi/abs/10.1190/segam2019-3215122.1)

Das, V. and T. Mukerji, 2020, Petrophysical properties prediction from pre-stack seismic data using convolutional neural networks: Geophysics, 85(5), N41-N55.

(https://library.seg.org/doi/abs/10.1190/geo2019-0650.1)

The main folders with final neural network architectures for the synthetic cases are:

1. Petrophysical from elastic - This contains the cascaded neural network architectures
(Final architectures used in paper are in the following jupyter notebooks in the Base_case folder)
  
    i. Petrophysical_properties_from_seismic-input-elasticnet-near-far-Ip,Vp_Vs_ratio-comparable_network.ipynb - This is the network with number of trainable parameters equivalent to the end-to-end network
  
    ii. Petrophysical_properties_from_seismic-input-elasticnet-near-far-Ip,Vp_Vs_ratio.ipynb - This is the network that gives the best results for the cascaded network case

2. Petrophysical from seismic - This contains the end-to-end neural network architecture 
(Final architectures used in paper are in the following jupyter notebooks)
  
    i. Petrophysical_properties_from_seismic_near_far.ipynb - This is the final network for the end-to-end approach
  
    ii. Petrophysical_properties_from_seismic_near_far-Copy1.ipynb - This is the final network for Stybarrow field example
  

Data for the synthetic example is in Data_generation_base_case folder 


Data for the Sybarrow field example is in Data_Stybarrow_field folder
