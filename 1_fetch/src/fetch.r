library(sbtools)
get_data <-function(item_num='5d925066e4b0c4f70d0d0599',item_names='me_RMSE.csv',out_file='model_RMSEs.csv'){

	# Get the data from ScienceBase
	data_file <- file.path('1_fetch','out', out_file)
	item_file_download(item_num, names = item_names, destinations = data_file, overwrite_file = TRUE)
	}